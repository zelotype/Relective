# Generated by Django 2.1 on 2019-05-03 12:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0018_auto_20190503_0811'),
    ]

    operations = [
        migrations.AlterField(
            model_name='review',
            name='detail',
            field=models.TextField(blank=True),
        ),
        migrations.AlterField(
            model_name='review',
            name='report',
            field=models.TextField(blank=True, null=True),
        ),
    ]