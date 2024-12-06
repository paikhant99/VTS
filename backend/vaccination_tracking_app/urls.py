from django.urls import path
from .views.patient_registration_view import PatientRegistrationView
from .views.login_view import LoginView
from .views.available_time_slots_view import AvailableTimeSlotsView


urlpatterns = [
    path('register/', PatientRegistrationView.as_view(), name='register'),
    path('login/', LoginView.as_view(), name='login'),
    path('timeslots/', AvailableTimeSlotsView.as_view() , name='timeslots')
    
]