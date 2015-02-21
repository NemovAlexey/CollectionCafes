# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('collection', '0005_route_route_point'),
    ]

    operations = [
        migrations.AddField(
            model_name='delay',
            name='delay_name',
            field=models.CharField(default=b'15 minutes', max_length=50),
            preserve_default=True,
        ),
    ]
