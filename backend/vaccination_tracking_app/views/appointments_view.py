from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated
from vaccination_tracking_app.models import CustomUser, Appointment, AvailableTimeSlot
from vaccination_tracking_app.serializers import BookAppointmentSerializer, AppointmentsSerializer, AvailableTimeSlotsSerializer

from rest_framework.response import Response
from rest_framework import status

class AppointmentsPerPatientView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, *args, **kwargs):
        patientId = request.query_params.get('patient_id')
        data = request.data.copy()

        if not patientId:
            return Response({"detail": "patient_id query parameter is required"}, status=status.HTTP_400_BAD_REQUEST)
        
        try:
            patient = CustomUser.objects.get(id=patientId, role=CustomUser.PATIENT)
            data['patient'] = patient.id
        except CustomUser.DoesNotExist:
            return Response({"detail": "Invalid patient_id"}, status=status.HTTP_404_NOT_FOUND)
        
        serializer = BookAppointmentSerializer(data = data)

        if serializer.is_valid():
            appointment = serializer.save()
            return Response(appointment, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status= status.HTTP_400_BAD_REQUEST)
    
    def get(self, request, *args, **kwargs):
        patientId = request.query_params.get('patient_id')
        if not patientId:
            return Response({"detail": "patient_id query parameter is required"}, status=status.HTTP_400_BAD_REQUEST)
        try:
            CustomUser.objects.get(id=patientId, role=CustomUser.PATIENT)
        except CustomUser.DoesNotExist:
            return Response({"detail": "Invalid patient_id"}, status=status.HTTP_404_NOT_FOUND)
            
        appointments = Appointment.objects.filter(patient_id=patientId, arrival_time=None)
        serializer = AppointmentsSerializer(appointments, many=True)
        
        return Response(serializer.data, status=status.HTTP_200_OK)


