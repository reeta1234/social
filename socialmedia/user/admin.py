from django.contrib import admin
from user.models import *
from django import forms
from django.contrib.auth.models import User, Group
# admin.site.unregister(User)
admin.site.unregister(Group)


class UserAdmin(admin.ModelAdmin):
    list_display = ('email',)
    search_fields = ('email',)
    list_per_page = 10

class ProfileAdmin(admin.ModelAdmin):
    list_display = ('firstname','lastname','gender','age')
    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == 'userid':
            return UserChoiceField(queryset=Users.objects.all())
        return super().formfield_for_foreignkey(db_field, request, **kwargs)

class UserChoiceField(forms.ModelChoiceField):
     def label_from_instance(self, obj):
         return "userid: {}".format(obj.id)
admin.site.register(Users,UserAdmin)
admin.site.register(Profiles,ProfileAdmin)

