# Generated by Django 2.1 on 2019-04-24 11:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0009_auto_20190424_1131'),
    ]

    operations = [
        migrations.AddField(
            model_name='review',
            name='human_count',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='review',
            name='rate_point',
            field=models.FloatField(default=0),
        ),
    ]
