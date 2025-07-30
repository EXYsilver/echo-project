from django.http import JsonResponse
import os

def echo_view(request):
    message = os.getenv("ECHO_MESSAGE", "Default response")
    return JsonResponse({"message": message})

