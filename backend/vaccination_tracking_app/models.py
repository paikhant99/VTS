from django.contrib.auth.models import AbstractUser
from django.db import models

# Create your models here.

class CustomUser(AbstractUser):

    MALE = 'Male'
    FEMALE = 'Female'

    GENDER_CHOICES = [
        (MALE, 'Male'),
        (FEMALE, 'Female'),
    ]

    PATIENT = 'PATIENT'
    DOCTOR = 'DOCTOR'
    ADMIN = 'ADMIN'

    ROLE_CHOICES = [
        (PATIENT, 'Patient'),
        (DOCTOR, 'Doctor'),
        (ADMIN, 'Admin'),
    ]
    date_of_birth = models.DateField(null=True, blank=True)
    gender = models.CharField(max_length=10, choices=GENDER_CHOICES, default=MALE)
    role = models.CharField(max_length=10, choices=ROLE_CHOICES, default=ADMIN)
    address = models.CharField(max_length=250, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

class AvailableTimeSlot(models.Model):
    doctor = models.ForeignKey(CustomUser, on_delete=models.CASCADE, limit_choices_to={'role': CustomUser.DOCTOR})
    available_datetime = models.DateTimeField()
    is_available = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

    def update(self, instance, validated_data):
        if 'is_available' in validated_data:
            validated_data['is_available'] = not validated_data['is_available']
        return super().update(instance, validated_data)

class Disease(models.Model):
    disease_name = models.CharField(max_length=50)
    disease_severity=models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

class Appointment(models.Model):
    consultation = models.OneToOneField(AvailableTimeSlot, on_delete=models.CASCADE)
    patient = models.ForeignKey(CustomUser, on_delete=models.CASCADE, limit_choices_to={'role': CustomUser.PATIENT})
    disease = models.ForeignKey(Disease, on_delete=models.CASCADE)
    arrival_time = models.TimeField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

class Vaccine(models.Model):
    disease = models.OneToOneField(Disease, on_delete=models.CASCADE)
    vaccine_name = models.CharField(max_length=50)
    total_dosage = models.PositiveIntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

class Vaccination(models.Model):
    vaccine = models.ForeignKey(Vaccine, on_delete=models.CASCADE)
    appointment = models.OneToOneField(Appointment, on_delete=models.CASCADE)
    dosing_time = models.PositiveSmallIntegerField()
    next_due_date = models.DateField(null=True, blank=True)
    remarks = models.CharField(max_length=250, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)