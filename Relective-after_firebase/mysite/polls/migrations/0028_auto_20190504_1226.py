# Generated by Django 2.1 on 2019-05-04 12:26

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0027_ratereview'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='review',
            name='human_count',
        ),
        migrations.RemoveField(
            model_name='review',
            name='rate_point',
        ),
    ]
