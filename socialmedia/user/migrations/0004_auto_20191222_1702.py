# Generated by Django 3.0.1 on 2019-12-22 17:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0003_auto_20191220_1237'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profiles',
            name='profilephoto',
            field=models.ImageField(blank=True, db_column='ProfilePhoto', max_length=50, null=True, upload_to='images/'),
        ),
        migrations.AlterField(
            model_name='users',
            name='createdate',
            field=models.DateTimeField(auto_now=True, db_column='CreateDate', null=True),
        ),
    ]
