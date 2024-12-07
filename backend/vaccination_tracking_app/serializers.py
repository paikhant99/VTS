from rest_framework import serializers
from .models import CustomUser, AvailableTimeSlot

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

class AvailableTimeSlotsSerializer(serializers.ModelSerializer):

    class Meta:
        model = AvailableTimeSlot
        fields = '__all__'
