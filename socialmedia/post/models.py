from django.db import models
from user.models import Profiles

class Post(models.Model):
    POST_TYPES = (
        ('I', 'Image'),
        ('V', 'Video'),
        ('A', 'Article'),
    )
    SCOPE = (
        ('public', 'Public'),
        ('private', 'Private'),
    )
    profileid = models.ForeignKey('user.Profiles', db_column='ProfileId',on_delete=models.CASCADE)  
    title = models.CharField(db_column='Title', max_length=100, blank=True, null=True)  
    description = models.CharField(db_column='Description', max_length=1200, blank=True, null=True)  
    scope = models.CharField(db_column='Scope', max_length=10,choices=SCOPE)  
    type = models.CharField(db_column='Type', max_length=1,choices=POST_TYPES)  
    posturl = models.CharField(db_column='PostUrl', max_length=100, blank=True, null=True)  
    thumbnailurl = models.CharField(db_column='ThumbnailUrl', max_length=100, blank=True, null=True)  
    poststatus = models.IntegerField(db_column='PostStatus',default=0)
    createdate = models.DateTimeField(db_column='CreateDate', auto_now=True, null=True)  

    def __str__(self):
       return str(self.id)
    class Meta:
        db_table = 'post'
        verbose_name = 'Post'


class Postlikes(models.Model):
    postid = models.ForeignKey(Post, db_column='PostId', blank=True, null=True,on_delete=models.CASCADE)  
    profileid = models.ForeignKey('user.Profiles', db_column='ProfileId', blank=True, null=True,on_delete=models.CASCADE)  
    is_like = models.BooleanField(db_column='is_like', max_length=1)  
    createdate = models.DateTimeField(db_column='CreateDate', auto_now=True, null=True)  

    class Meta:
        db_table = 'postlikes'
        verbose_name = 'Post Like'


class Postratings(models.Model):
    postid = models.ForeignKey(Post, db_column='PostId', blank=True, null=True,on_delete=models.CASCADE)  
    profileid = models.ForeignKey('user.Profiles', db_column='ProfileId', blank=True, null=True,on_delete=models.CASCADE)  
    rating = models.DecimalField(db_column='Rating', max_digits=2, decimal_places=1, blank=True, null=True)  
    createdate = models.DateTimeField(db_column='CreateDate', auto_now=True, null=True)  

    class Meta:
        db_table = 'postratings'
        verbose_name = 'Post Rating'


class Postsharings(models.Model):
    postid = models.ForeignKey(Post, db_column='PostId', blank=True, null=True,related_name='+',on_delete=models.CASCADE)  
    profileid = models.ForeignKey('user.Profiles',db_column='ProfileId', blank=True, null=True,related_name='+',on_delete=models.CASCADE)  
    sharedto = models.ForeignKey('user.Profiles',db_column='SharedTo', max_length=50, blank=True, null=True,on_delete=models.CASCADE)  
    createdate = models.DateTimeField(db_column='CreateDate', auto_now=True, null=True)  

    class Meta:
        db_table = 'postsharings'
        verbose_name = 'Post Sharing'