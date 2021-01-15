from django.shortcuts import render,get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .models import Book
from django.core.files.storage import FileSystemStorage                                           
from django.http import HttpResponse, HttpResponseNotFound
from pathlib import os
from django.conf import settings
from .forms import CommentForm
from django.contrib import auth
from django.contrib.auth.models import User
# from gtts import gTTS
from playsound import playsound
import PyPDF4
import pyttsx3
import keyboard
import multiprocessing
# Create your views here.
def book(request):
    book_list = Book.objects.all()
    page = request.GET.get('page', 1)
    paginator = Paginator(book_list, 4)
    try:
        books = paginator.page(page)
    except PageNotAnInteger:
        books = paginator.page(1)
    except EmptyPage:
        books = paginator.page(paginator.num_pages)
    return render(request, 'index.html', {'books': books})

def bookdetails(request, book_id):
    bookdetail = get_object_or_404(Book, pk=book_id)
    comments = bookdetail.comments.filter(active=True)
    new_comment = None
    fav = bool
    if bookdetail.favourites.filter(id=request.user.id).exists():
        fav=True
    # Comment posted
    if request.method == 'POST':
        comment_form = CommentForm(request.POST)
        if comment_form.is_valid():
            # Create Comment object but don't save to database yet
            new_comment = comment_form.save(commit=False)
            new_comment.user = request.user
            # Assign the current post to the comment
            new_comment.book = bookdetail
            # Save the comment to the database
            new_comment.save()
    else:
        comment_form = CommentForm()

    return render(request, 'books.html',{'bookdetail':bookdetail,
                                           'comments': comments,
                                           'new_comment': new_comment,
                                           'comment_form': comment_form,
                                           'fav': fav})

def search(request):
    query = request.GET['query']
    if len(query)>78:
        books=Book.objects.none()
    else:
        bookstitle = Book.objects.filter(title__icontains=query)
        booksauthor = Book.objects.filter(author__icontains=query)
        bookscategories = Book.objects.filter(categories__icontains=query)
        books = bookstitle.union(booksauthor).union(bookscategories)
    
    if books.count()==0:
        message.error(request,"No search result found")
    params = {'books': books, 'query': query}
    return render(request, 'search.html', params)

def category(request):
    catbooks = Book.objects.filter(categories__icontains='Fiction')
    context = {'catbooks':catbooks}
    return render(request,'category.html',context)

def Classcategory(request):
    classbooks = Book.objects.filter(categories__icontains='Classic')
    context = {'classbooks':classbooks}
    return render(request,'category.html',context)

def Educategory(request):
    edubooks = Book.objects.filter(categories__icontains='Educational')
    context = {'edubooks':edubooks}
    return render(request,'category.html',context)

def Allcategory(request):
    books = Book.objects.all()
    context = {'books':books}
    return render(request,'category.html',context)

def text2audio(request,id):
    language = 'en'
    bookdetail = get_object_or_404(Book, id=id)
    pdffile= bookdetail.book_file
    filename = str(pdffile)
    filepath = os.path.join(settings.MEDIA_ROOT, filename)
    if filepath.endswith('.pdf'):
        pdf_File = open(filepath, 'rb')
        pdfReader = PyPDF4.PdfFileReader(pdf_File)
        from_page = pdfReader.getPage(4)
        text = from_page.extractText()
        speak = pyttsx3.init()
        speak.say(text)
        speak.runAndWait()
        speak.stop()

    pdf_File = open(filepath, 'r').read().replace("\n", " ")
    speak = pyttsx3.init()
    speak.say(pdf_File)
    speak.runAndWait()
    speak.stop()
    return render(request,'audio.html',{'bookdetail':bookdetail,'speak':speak})

def audio(request,id):
    bookdetail = get_object_or_404(Book, id=id)
    param={'bookdetail':bookdetail}
    return render(request, 'audio.html',param)
    

  
   
