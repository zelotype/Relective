# Generated by Django 2.1 on 2019-04-23 15:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0002_auto_20190422_1248'),
    ]

    operations = [
        migrations.AddField(
            model_name='gened_subject',
            name='prerequisite',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
    ]
