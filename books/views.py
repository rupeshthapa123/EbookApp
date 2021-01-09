from django.shortcuts import render,get_object_or_404
from .models import Book
from django.core.files.storage import FileSystemStorage                                           
from django.http import HttpResponse, HttpResponseNotFound
from pathlib import os
from django.conf import settings
from .forms import CommentForm, FavouriteForm
from django.contrib import auth

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

def addfavourite(request, book_id):
    user =auth.get_user(request)
    bookdetail = get_object_or_404(Book, pk=book_id)
    new_favourite = None
    if request.method == 'POST':
        favourite_form = FavouriteForm(request.POST)
        if favourite_form.is_valid():
            new_favourite = favourite_form.save(commit=False)
            new_favourite.user = user
            new_favourite.book = bookdetail
            # Save the comment to the database
            new_favourite.save()
    else:
        favourite_form = FavouriteForm() 
    return render(request, 'books.html', {'user':user, 'bookdetail':bookdetail, 'new_favourite':new_favourite, 'favourite_form':favourite_form})

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
