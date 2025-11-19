from django.http import HttpResponse
from GreetingGenerator import GreetingGenerator

def greetingView(request):
	return HttpResponse(GreetingGenerator().get_greeting())
