# Generated by Django 4.2.16 on 2024-12-06 01:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        (
            "vaccination_tracking_app",
            "0002_customuser_created_at_customuser_modified_at",
        ),
    ]

    operations = [
        migrations.AlterField(
            model_name="customuser",
            name="gender",
            field=models.CharField(
                choices=[("Male", "Male"), ("Female", "Female")], max_length=10
            ),
        ),
    ]
