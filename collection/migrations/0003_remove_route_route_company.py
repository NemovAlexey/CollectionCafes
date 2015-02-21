# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('collection', '0002_auto_20150212_1633'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='route',
            name='route_company',
        ),
    ]
