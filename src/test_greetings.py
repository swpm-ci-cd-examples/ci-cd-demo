import pytest
from GreetingGenerator import GreetingGenerator

def test_get_greeting():
    gg = GreetingGenerator()
    assert gg.get_greeting() == "This is a new Greeting! It is: Hello world!"
