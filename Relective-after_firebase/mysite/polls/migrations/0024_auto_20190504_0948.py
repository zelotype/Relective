# Generated by Django 2.1 on 2019-05-04 09:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0023_auto_20190504_0947'),
    ]

    operations = [
        migrations.AlterField(
            model_name='review',
            name='title',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
