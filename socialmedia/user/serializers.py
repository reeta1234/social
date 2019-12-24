from rest_framework import serializers
from user.models import *

class UsersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Users
        fields = ['id', 'email']