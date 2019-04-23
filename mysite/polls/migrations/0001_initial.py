# Generated by Django 2.1 on 2019-04-22 12:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('detail', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Courese_GenEd',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='Course_Major',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('course_gened', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Courese_GenEd')),
            ],
        ),
        migrations.CreateModel(
            name='Course_Year',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type', models.IntegerField(choices=[(2557, 2557), (2559, 2559)], default=2557)),
            ],
        ),
        migrations.CreateModel(
            name='Faculty',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='GenEd_Subject',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('name_eng', models.CharField(default='', max_length=255)),
                ('description', models.TextField()),
                ('categories', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Courese_GenEd')),
            ],
        ),
        migrations.CreateModel(
            name='Review',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('detail', models.TextField()),
                ('verify', models.BooleanField()),
                ('subject_id', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.GenEd_Subject')),
            ],
        ),
        migrations.CreateModel(
            name='Student_Year',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.IntegerField(choices=[(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8)], default=1)),
            ],
        ),
        migrations.CreateModel(
            name='Subject_require',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('detail', models.TextField()),
                ('status', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('role', models.CharField(choices=[('administrator', 'Admin'), ('student', 'Student'), ('teacher', 'Teacher')], max_length=10)),
                ('email', models.EmailField(max_length=254)),
                ('faculty', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Faculty')),
                ('major', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Course_Major')),
                ('year', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Student_Year')),
            ],
        ),
        migrations.AddField(
            model_name='subject_require',
            name='user_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.User'),
        ),
        migrations.AddField(
            model_name='review',
            name='user_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.User'),
        ),
        migrations.AddField(
            model_name='course_major',
            name='faculty',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Faculty'),
        ),
        migrations.AddField(
            model_name='course_major',
            name='year',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Student_Year'),
        ),
        migrations.AddField(
            model_name='courese_gened',
            name='year',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.Course_Year'),
        ),
        migrations.AddField(
            model_name='comment',
            name='review',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='polls.Review'),
        ),
        migrations.AddField(
            model_name='comment',
            name='user_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='polls.User'),
        ),
    ]
