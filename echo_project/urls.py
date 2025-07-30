from django.contrib import admin
from django.urls import path
from core.views import echo_view

urlpatterns = [
    path('', echo_view),  # ← главная страница
    path('echo/', echo_view),
    path('admin/', admin.site.urls),
]
