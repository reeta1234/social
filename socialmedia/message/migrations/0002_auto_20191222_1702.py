# Generated by Django 3.0.1 on 2019-12-22 17:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('message', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='messages',
            name='createdate',
            field=models.DateTimeField(auto_now=True, db_column='CreateDate', null=True),
        ),
        migrations.AlterField(
            model_name='messages',
            name='readdate',
            field=models.DateTimeField(auto_now=True, db_column='ReadDate', null=True),
        ),
    ]
