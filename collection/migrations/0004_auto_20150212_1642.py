# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('collection', '0003_remove_route_route_company'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='route',
            name='route_status',
        ),
        migrations.AlterField(
            model_name='route',
            name='route_color',
            field=models.CharField(default=b'808080', max_length=50),
            preserve_default=True,
        ),
    ]
