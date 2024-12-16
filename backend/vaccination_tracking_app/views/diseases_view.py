from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import status

from vaccination_tracking_app.models import Disease
from vaccination_tracking_app.serializers import DiseaseSerializer

class DiseasesView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        serializer = DiseaseSerializer(Disease.objects.all(), many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)