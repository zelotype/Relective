# Generated by Django 2.1 on 2019-04-24 11:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0010_auto_20190424_1135'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='img_url',
            field=models.TextField(default=1),
            preserve_default=False,
        ),
    ]
