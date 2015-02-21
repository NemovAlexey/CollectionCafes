# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('collection', '0006_delay_delay_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='delay',
            name='delay_name',
            field=models.CharField(max_length=50),
            preserve_default=True,
        ),
    ]
