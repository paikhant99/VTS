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
    role = models.CharField(max_length=10, choices=ROLE_CHOICES, default=PATIENT)
    address = models.CharField(max_length=250, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

class AvailableTimeSlot(models.Model):
    doctor = models.ForeignKey(CustomUser, on_delete=models.CASCADE, limit_choices_to={'role': CustomUser.DOCTOR})
    available_datetime = models.DateTimeField()
    is_available = models.BooleanField(default=True)