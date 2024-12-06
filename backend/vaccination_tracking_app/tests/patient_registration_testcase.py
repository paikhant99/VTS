from django.test import TestCase
from django.urls import reverse
from rest_framework.test import APIClient
from rest_framework import status
import datetime

# Create your tests here.
class PatientRegistrationTestCase(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.register_url = reverse('register')
        self.valid_data = {
            "username": "patient1",
            "email": "patient1@example.com",
            "password": "securepassword",
            "date_of_birth": datetime.date(2010, 1, 1),
            "gender": "Male",
            "address": ""
        }
        self.invalid_data = {
            "username": "",
            "email": "invalid",
            "password": "",
            "date_of_birth": datetime.date(2010, 1, 1),
            "gender": "Male",
            "address": ""
        }

    def test_patient_registration_success(self):
        response = self.client.post(self.register_url, self.valid_data)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertIn('access', response.data)
        self.assertIn('refresh', response.data)

    def test_patient_registration_failure(self):
        response = self.client.post(self.register_url, self.invalid_data)
        self.assertEqual(response.status_code, status.HTTP_400_BAD_REQUEST)
