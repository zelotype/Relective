# Generated by Django 2.1 on 2019-05-04 11:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0024_auto_20190504_0948'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comment',
            name='report',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='review',
            name='report',
            field=models.IntegerField(default=0),
        ),
    ]
