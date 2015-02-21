# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('collection', '0007_auto_20150215_1426'),
    ]

    operations = [
        migrations.AlterField(
            model_name='delay',
            name='delay_max',
            field=models.TimeField(default=b'00:00:00'),
            preserve_default=True,
        ),
    ]
