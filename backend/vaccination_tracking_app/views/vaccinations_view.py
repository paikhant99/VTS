from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated
from vaccination_tracking_app.models import CustomUser, Vaccination, Appointment
from vaccination_tracking_app.serializers import VaccinationsSerializer

from rest_framework.response import Response
from rest_framework import status

class VaccinationsView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        patientId = request.query_params.get('patient_id')
        if not patientId:
            return Response({"detail": "patient_id query parameter is required"}, status=status.HTTP_400_BAD_REQUEST)
        try:
            patient = CustomUser.objects.get(id=patientId, role=CustomUser.PATIENT)
        except CustomUser.DoesNotExist:
            return Response({"detail": "Invalid patient_id"}, status=status.HTTP_404_NOT_FOUND)
            
        appointments = Appointment.objects.filter(patient_id=patient.id, arrival_time__isnull=False)
        vaccinations = Vaccination.objects.filter(appointment__in=appointments)
        serializer = VaccinationsSerializer(vaccinations, many=True)
        
        return Response(serializer.data, status=status.HTTP_200_OK)