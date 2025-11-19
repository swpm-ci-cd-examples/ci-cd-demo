from django.urls import path
from .views import greetingView

urlpatterns = [
	path('', greetingView, name='greet')
]
