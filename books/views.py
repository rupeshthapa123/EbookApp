from django.shortcuts import render
from .models import Book
from django.core.files.storage import FileSystemStorage                                           
from django.http import HttpResponse, HttpResponseNotFound
from pathlib import os
from django.conf import settings

# Create your views here.
def book(request):
    books = Book.objects.all()
    return render(request, 'index.html', {'books': books})
    
def bookdetails(request):
    books = Book.objects.all()
    return render(request, 'books.html', {'books': books})
"""
def home(request):
    books = Book()
    name = books.book_file
    image_data = open(settings.MEDIA_ROOT, “name.pdf”, “rb”).read()
    return HttpResponse(image_data, mimetype=”application/pdf”)
"""

def pdf_view(request):
    books = Book()
    file_path = os.path.join(settings.MEDIA_ROOT, "documents/" + books.book_file + ".pdf")
    return render(request, 'books.html', {'file_path': file_path})

"""
def download(request,path):
	file_path=os.path.join(settings.MEDIA_ROOT,path)
	if os.path.exists(file_path):
		with open(file_path,'rb')as fh:
			response=HttpResponse(fh.read(),content_type="application/adminupload")
			response['Content-Disposition']='inline;filename='+os.path.basename(file_path)
			return response
	raise Http404	"""	
