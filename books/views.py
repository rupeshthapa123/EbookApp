from django.shortcuts import render,get_object_or_404
from .models import Book
from django.core.files.storage import FileSystemStorage                                           
from django.http import HttpResponse, HttpResponseNotFound
from pathlib import os
from django.conf import settings
from .forms import CommentForm

# Create your views here.
def book(request):
    books = Book.objects.all()
    return render(request, 'index.html', {'books': books})
 
def bookdetails(request, book_id):
    bookdetail = get_object_or_404(Book, pk=book_id)
    comments = bookdetail.comments.filter(active=True)
    new_comment = None
    # Comment posted
    if request.method == 'POST':
        comment_form = CommentForm(request.POST)
        if comment_form.is_valid():
            # Create Comment object but don't save to database yet
            new_comment = comment_form.save(commit=False)
            # Assign the current post to the comment
            new_comment.book = bookdetail
            # Save the comment to the database
            new_comment.save()
    else:
        comment_form = CommentForm()

    return render(request, 'books.html',{'bookdetail':bookdetail,
                                           'comments': comments,
                                           'new_comment': new_comment,
                                           'comment_form': comment_form})


"""
def home(request):
    books = Book()
    name = books.book_file
    image_data = open(settings.MEDIA_ROOT, “name.pdf”, “rb”).read()
    return HttpResponse(image_data, mimetype=”application/pdf”)
"""
"""
def pdf_view(request):
    books = Book()
    file_path = os.path.join(settings.MEDIA_ROOT, "documents/" + books.book_file + ".pdf")
    return render(request, 'books.html', {'file_path': file_path})
"""
"""
def download(request,path):
	file_path=os.path.join(settings.MEDIA_ROOT,path)
	if os.path.exists(file_path):
		with open(file_path,'rb')as fh:
			response=HttpResponse(fh.read(),content_type="application/adminupload")
			response['Content-Disposition']='inline;filename='+os.path.basename(file_path)
			return response
	raise Http404	"""	
