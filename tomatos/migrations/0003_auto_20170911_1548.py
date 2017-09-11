# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-11 13:48
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tomatos', '0002_auto_20170911_1521'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tomato',
            name='colors',
            field=models.ManyToManyField(blank=True, to='tomatos.TomatoColor'),
        ),
        migrations.AlterField(
            model_name='tomato',
            name='image',
            field=models.ImageField(null=True, upload_to='images/'),
        ),
        migrations.AlterField(
            model_name='tomato',
            name='types',
            field=models.ManyToManyField(blank=True, to='tomatos.TomatoType'),
        ),
    ]
