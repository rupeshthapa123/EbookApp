"""
Django settings for EbookApp project.

Generated by 'django-admin startproject' using Django 3.1.3.

For more information on this file, see
https://docs.djangoproject.com/en/3.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.1/ref/settings/
"""

from pathlib import Path,os

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'b02_=#1t%u67%c#)k-*01okzs%4b$052r@p((@i7&4jz28p4o%'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['projectebook.herokuapp.com']

#STAR_RATING_RATING_MODEL = 'myapp.MyRating'
# Application definition
CRISPY_TEMPLATE_PACK = 'bootstrap4'

INSTALLED_APPS = [
    'django.contrib.postgres',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'crispy_forms',
    'books.apps.BooksConfig',
]

MIDDLEWARE = [
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'EbookApp.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR,'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'EbookApp.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'd6rndqso58ktjo',
        'USER': 'ijgqkvcgquoopt',
        'PORT': 5432,
        'PASSWORD': '4991d0cc9c26a45b476ac7bc670643ac287d05e60ff1452ca09d10163f966537',
        'HOST': 'ec2-3-232-73-180.compute-1.amazonaws.com',
    }
}
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.postgresql',
#         'NAME': 'rupesh',
#         'USER': 'postgres',
#         'PASSWORD': '1234',
#         'HOST': 'localhost',
#     }
# }
# DATABASES = {
#     'default': {
#         'ENGINE'  : 'django.db.backends.mysql', # <-- UPDATED line 
#         'NAME'    : 'ebookdb',                 # <-- UPDATED line 
#         'USER'    : 'root',                     # <-- UPDATED line
#         'PASSWORD': '123456',              # <-- UPDATED line
#         'HOST'    : 'localhost',                # <-- UPDATED line
#         'PORT'    : '3306',
#     }
# }

# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/
# STATIC_URL = '/static/'
# django_heroku.settings(locals())


STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR,'static')
] 
STATIC_ROOT=  os.path.join(BASE_DIR,'assets')
# PROJECT_ROOT   =   os.path.join(os.path.abspath(__file__))
# STATIC_ROOT  =   os.path.join(PROJECT_ROOT, 'staticfiles')
# STATIC_URL = '/static/'

# # Extra lookup directories for collectstatic to find static files
# STATICFILES_DIRS = (
#     os.path.join(PROJECT_ROOT, 'static'),
# )

#  Add configuration for static files storage using whitenoise
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com' #Localhost
EMAIL_PORT = 587 #1825
EMAIL_USE_TLS = True
EMAIL_HOST_USER = "rupesh.thapa2050@gmail.com"
EMAIL_HOST_PASSWORD = "jpyecjyvvugwpggy"
