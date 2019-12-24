from django.contrib import admin
from message.models import Messages
from django import forms
from user.models import *

class MessageAdmin(admin.ModelAdmin):
    list_display = ('from_profile','to_profile','message','createdate')

    def from_profile(self, obj):
        return obj.fromprofile.firstname
    def to_profile(self, obj):
        return obj.toprofile.firstname

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == 'fromprofile':
            return UserChoiceField(queryset=Profiles.objects.all())
        if db_field.name == 'toprofile':
            return UserChoiceField(queryset=Profiles.objects.all())
        return super().formfield_for_foreignkey(db_field, request, **kwargs)

class UserChoiceField(forms.ModelChoiceField):
     def label_from_instance(self, obj):
         return "fromprofile: {}".format(obj.id)

admin.site.register(Messages,MessageAdmin)

