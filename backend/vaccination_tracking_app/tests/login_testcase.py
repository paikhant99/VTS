from django.test import TestCase
from rest_framework.test import APIClient
from django.urls import reverse
from rest_framework import status
from vaccination_tracking_app.models import CustomUser
import datetime

class LoginTestCase(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.login_url = reverse('login')
        self.doctor = CustomUser.objects.create_user(
            username="doctor1",
            email="doctor1@example.com",
            password="securepassword",
            date_of_birth= datetime.date(2010, 1, 1),
            gender= "Male",
            address= "",
            role=CustomUser.DOCTOR
        )
        
        self.patient = CustomUser.objects.create_user(
            username="patient1",
            email="patient1@example.com",
            password="securepassword",
            date_of_birth= datetime.date(2010, 1, 1),
            gender= "Male",
            address= "",
            role=CustomUser.PATIENT
        )

    def test_doctor_login_success(self):
        response = self.client.post(self.login_url, {
            "username": "doctor1",
            "password": "securepassword"
        })
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertIn('access', response.data)
        self.assertIn('refresh', response.data)
        self.assertEqual(response.data['role'], CustomUser.DOCTOR)

    def test_patient_login_success(self):
        response = self.client.post(self.login_url, {
            "username": "patient1",
            "password": "securepassword"
        })
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertIn('access', response.data)
        self.assertIn('refresh', response.data)
        self.assertEqual(response.data['role'], CustomUser.PATIENT)
    
    def test_doctor_login_failure(self):
        response = self.client.post(self.login_url, {
            "username": "doctor1",
            "password": "wrongpassword"
        })
        self.assertEqual(response.status_code, status.HTTP_401_UNAUTHORIZED)

    def test_patient_login_failure(self):
        response = self.client.post(self.login_url, {
            "username": "patient1",
            "password": "wrongpassword"
        })
        self.assertEqual(response.status_code, status.HTTP_401_UNAUTHORIZED)