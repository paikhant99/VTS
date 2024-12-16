from django.test import TestCase
from vaccination_tracking_app.models import CustomUser, AvailableTimeSlot
from datetime import datetime
from rest_framework import status
from rest_framework.test import APIClient
from django.urls import reverse
from rest_framework_simplejwt.tokens import RefreshToken


class AvailableTimeSlotsTestCase(TestCase):
    def setUp(self):
        self.client = APIClient()

        self.timeslots_url = reverse('timeslots')

        self.doctor = CustomUser.objects.create_user(
            username= "doctor1",
            email="doctor1@mail.com",
            password="12345",
            role = CustomUser.DOCTOR)
        
        self.patient = CustomUser.objects.create_user(
            username= "patient1",
            email="patient1@mail.com",
            password="12345",
            role = CustomUser.PATIENT)
        self.access_token = RefreshToken.for_user(self.patient)
        
        
        
        self.timeslot_list =[]

        self.timeslot = AvailableTimeSlot.objects.create(
            available_datetime = datetime.now(),
            doctor = self.doctor
        )
        self.timeslot_list.append(self.timeslot)

    def test_available_time_slots_get_authenticated_success(self):
        self.client.credentials(HTTP_AUTHORIZATION=f"Bearer {self.access_token.access_token}")
        response = self.client.get(self.timeslots_url)

        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data[0]['is_available'], self.timeslot.is_available)

    def test_available_time_slots_get_inauthenticated_failure(self):
        self.client.credentials(HTTP_AUTHORIZATION=None)
        response = self.client.get(self.timeslots_url)
        self.assertEqual(response.status_code, status.HTTP_401_UNAUTHORIZED)