# Generated by Django 3.1.3 on 2020-12-02 07:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='book',
            name='book_file',
            field=models.FileField(default=0, upload_to='documents/'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='book',
            name='cover_image',
            field=models.ImageField(default=0, upload_to='images'),
            preserve_default=False,
        ),
    ]