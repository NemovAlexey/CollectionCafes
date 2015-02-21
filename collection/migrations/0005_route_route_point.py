# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('collection', '0004_auto_20150212_1642'),
    ]

    operations = [
        migrations.AddField(
            model_name='route',
            name='route_point',
            field=models.ForeignKey(default=1, to='collection.Point'),
            preserve_default=False,
        ),
    ]
