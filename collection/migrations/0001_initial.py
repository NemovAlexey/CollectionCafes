# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Company',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('company_name', models.CharField(max_length=200)),
                ('company_color', models.CharField(max_length=50)),
                ('company_logo', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'company',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Delay',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('delay_max', models.TimeField()),
            ],
            options={
                'db_table': 'delay',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Message',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('message_text', models.TextField()),
            ],
            options={
                'db_table': 'message',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Point',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('point_address', models.CharField(max_length=200)),
                ('point_telephone', models.CharField(default=b'+7(909)-905-73-32', max_length=50)),
                ('point_coordinates', models.CharField(max_length=100)),
                ('point_time_collection', models.TimeField()),
                ('point_delay_collection', models.TimeField(default=b'00:00:00')),
                ('point_delay_color', models.CharField(default=b'black', max_length=50)),
                ('point_status_collection', models.BooleanField(default=False)),
                ('point_company', models.ForeignKey(to='collection.Company')),
            ],
            options={
                'db_table': 'point',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Route',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('route_current_position', models.CharField(max_length=100)),
                ('route_status', models.CharField(default=b'Free', max_length=200)),
                ('route_color', models.CharField(default=b'#808080', max_length=50)),
                ('route_company', models.ForeignKey(to='collection.Company')),
            ],
            options={
                'db_table': 'route',
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='message',
            name='message_point',
            field=models.ForeignKey(to='collection.Point'),
            preserve_default=True,
        ),
    ]
