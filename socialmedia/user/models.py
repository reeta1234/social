from django.db import models

class Users(models.Model):
    id = models.IntegerField(primary_key=True)
    email = models.EmailField(db_column='Email', max_length=100)  
    password = models.CharField(db_column='Password',max_length=255, blank=True, null=True)  
    token = models.CharField(db_column='Token', max_length=255)   
    is_active = models.IntegerField(db_column='is_active',default=0)
    createdate = models.DateTimeField(db_column='CreateDate', auto_now=True, null=True)   
    
    def __str__(self):
       return self.email
    class Meta:
        db_table = 'users'
        verbose_name = 'User'


class Profiles(models.Model):
    userid = models.ForeignKey('Users', db_column='UserId', on_delete=models.CASCADE)  
    firstname = models.CharField(db_column='FirstName', max_length=45, null=True)  
    lastname = models.CharField(db_column='LastName', max_length=45, blank=True, null=True)  
    gender = models.CharField(db_column='Gender', max_length=1, blank=True, null=True) 
    age = models.CharField(db_column='Age', max_length=10, blank=True, null=True) 
    profilephoto = models.ImageField(db_column='ProfilePhoto', max_length=50, blank=True, null=True,upload_to='images/')  
       
    def __str__(self):
        return str(self.userid) 
    
    class Meta:
        db_table = 'profiles'
        verbose_name = 'Profile'