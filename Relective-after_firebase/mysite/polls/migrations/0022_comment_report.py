# Generated by Django 2.1 on 2019-05-04 09:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0021_auto_20190504_0621'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='report',
            field=models.BooleanField(default=False),
        ),
    ]
