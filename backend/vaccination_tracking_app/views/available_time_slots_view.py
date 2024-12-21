from datetime import datetime
from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated
from vaccination_tracking_app.models import AvailableTimeSlot
from vaccination_tracking_app.serializers import AvailableTimeSlotsSerializer

from rest_framework.response import Response
from rest_framework import status

class AvailableTimeSlotsView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        dateTime = request.query_params.get('datetime')
        if (not dateTime):
            timeSlots = AvailableTimeSlot.objects.filter(is_available=True)
        else:
            timeSlots = AvailableTimeSlot.objects.filter(available_datetime__date = datetime.fromisoformat(dateTime), is_available=True)
        serializer = AvailableTimeSlotsSerializer(timeSlots, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)