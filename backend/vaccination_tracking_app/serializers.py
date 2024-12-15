from rest_framework import serializers
from .models import CustomUser, AvailableTimeSlot, Disease, Appointment

class PatientRegistrationSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)

    class Meta:
        model = CustomUser
        fields = ['username', 'email', 'password', 'date_of_birth', 'gender', 'address']

    def create(self, validated_data):
        user = CustomUser.objects.create_user(
            username=validated_data['username'],
            email=validated_data['email'],
            password=validated_data['password'],
            date_of_birth=validated_data['date_of_birth'],
            gender=validated_data['gender'],
            address=validated_data['address'],
            role=CustomUser.PATIENT
        )
        return user

class DoctorSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['id', 'username', 'gender']

class AvailableTimeSlotsSerializer(serializers.ModelSerializer):
    doctor = DoctorSerializer(read_only=True)

    class Meta:
        model = AvailableTimeSlot
        fields = ['id', 'available_datetime', 'is_available', 'doctor']

class DiseaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Disease
        fields = ['id', 'disease_name', 'disease_severity']

class PatientSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['id', 'username', 'email', 'date_of_birth', 'gender', 'address']

class BookAppointmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Appointment
        fields = ['consultation', 'patient', 'disease']

class AppointmentsSerializer(serializers.ModelSerializer):
    consultation = AvailableTimeSlotsSerializer(read_only=True)
    patient = PatientSerializer(read_only=True)
    disease = DiseaseSerializer(read_only=True)

    class Meta:
        model = Appointment
        fields = ['id', 'consultation', 'patient', 'disease']

        def create(self, validated_data):
            # Create the appointment
            appointment = super().create(validated_data)

            # Update the doctor's availability
            consultation = appointment.consultation
            consultation.is_available = False  # Set the flag to False
            consultation.save()
            return appointment