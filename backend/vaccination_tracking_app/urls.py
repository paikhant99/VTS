from django.urls import path
from .views.patient_registration_view import PatientRegistrationView
from .views.login_view import LoginView
from .views.available_time_slots_view import AvailableTimeSlotsView
from .views.diseases_view import DiseasesView
from .views.appointments_view import AppointmentsPerPatientView
from .views.vaccinations_view import VaccinationsView


urlpatterns = [
    path('register/', PatientRegistrationView.as_view(), name='register'),
    path('login/', LoginView.as_view(), name='login'),
    path('timeslots/', AvailableTimeSlotsView.as_view() , name='timeslots'),
    path('diseases/', DiseasesView.as_view(), name='diseases'),
    path('appointments/', AppointmentsPerPatientView.as_view(), name='appointments'),
    path('vaccinations/', VaccinationsView.as_view(), name='vaccinations')
]