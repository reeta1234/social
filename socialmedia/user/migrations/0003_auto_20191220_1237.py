# Generated by Django 3.0.1 on 2019-12-20 12:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0002_remove_users_logintype'),
    ]

    operations = [
        migrations.AlterField(
            model_name='users',
            name='token',
            field=models.CharField(db_column='Token', max_length=255),
        ),
    ]
