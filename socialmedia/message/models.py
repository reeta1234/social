from django.db import models
from user.models import Profiles

class Messages(models.Model):
    id = models.IntegerField(primary_key=True)
    fromprofile = models.ForeignKey('user.Profiles', db_column='FromProfile', blank=True, null=True, related_name='+',on_delete=models.CASCADE)  
    toprofile = models.ForeignKey('user.Profiles', db_column='ToProfile', blank=True, null=True, related_name='+',on_delete=models.CASCADE) 
    message = models.CharField(db_column='Message', max_length=500, blank=True, null=True)  
    readdate = models.DateTimeField(db_column='ReadDate', auto_now=True, null=True)  
    createdate = models.DateTimeField(db_column='CreateDate', auto_now=True, null=True)  
    todelete = models.CharField(db_column='Todelete', max_length=3, default='N')  
    fromdelete = models.CharField(db_column='Fromdelete', max_length=3, default='N')  

    def __str__(self):
       return self.message

    class Meta:
        db_table = 'messages'
        verbose_name = 'Message'      

