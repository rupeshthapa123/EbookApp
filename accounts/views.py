from django.shortcuts import render, redirect,get_object_or_404
from django.contrib.auth.models import User,auth
from django.contrib import messages
from accounts.forms import EditProfileForm, UserDeleteForm
from django.urls import reverse, reverse_lazy
from django.contrib.auth.forms import PasswordChangeForm
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required
from books.models import Book
from .forms import ContactForm
from django.core.mail import send_mail
# Create your views here.
def register(request):
    
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        confirmpassword = request.POST['confirm-password']
        
        if password==confirmpassword:
            if User.objects.filter(username=username).exists():
             messages.info(request,'Username already taken')
             return redirect('/accounts/register')
            elif User.objects.filter(email=email).exists():
             messages.info(request,'Email already taken')
             return redirect('/accounts/register')
            else:
             user = User.objects.create_user(username = username, password = password, email = email, first_name = first_name, last_name = last_name)
             user.save()
             messages.info(request, 'User Created Successfully')
             return redirect('/accounts/login')
               
        else:
            messages.info(request, 'Password doesnot match')
            return redirect('/accounts/register')
        return redirect('/')
    else:
        return render(request,'register.html')

def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username = username, password= password)

        if user is not None:
            auth.login(request,user)
            return redirect('/')
        else:
            messages.info(request,'Invalid Credentials')
            return redirect('/accounts/login')
    else:
        return render(request,'login.html')

def logout(request):
    auth.logout(request)
    return redirect('/')    

def view_profile(request, pk=None):
    if pk:
        user = User.objects.get(pk=pk)
    else:
        user = request.user
    args = {'user': user}
    return render(request, 'profile.html', args)

def edit_profile(request):
    if request.method == 'POST':
        form = EditProfileForm(request.POST, instance=request.user)

        if form.is_valid():
            form.save()
            return redirect(reverse('view_profile'))
    else:
        form = EditProfileForm(instance=request.user)
    args = {'form': form}
    return render(request, 'edit_profile.html', args)

def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(data=request.POST, user=request.user)
        if form.is_valid():
            form.save()
            update_session_auth_hash(request, form.user)
            return redirect(reverse('view_profile'))
        else:
            return redirect('change_password')
    else:
        form = PasswordChangeForm(user=request.user)
    args = {'form': form}
    return render(request, 'change_password.html', args)

@login_required
def del_user(request):
    if request.method == 'POST':
        delete_form = UserDeleteForm(request.POST, instance=request.user)
        user = request.user
        user.delete()
        messages.info(request, 'Your account has been deleted.')
        return redirect('/')
    else:
        delete_form = UserDeleteForm(instance=request.user)

    context = {
        'delete_form': delete_form
    }
    return render(request, 'del_acc.html', context)

@login_required
def favourite_add(request, id):
    book = get_object_or_404(Book, id=id)
    if book.favourites.filter(id=request.user.id).exists():
        book.favourites.remove(request.user)
    else:
        book.favourites.add(request.user)
    return HttpResponseRedirect(request.META['HTTP_REFERER'])

def favourite_list(request):
    new = Book.objects.filter(favourites=request.user)
    return render(request,'favourites.html',{'new':new})

def contactview(request):
    name=''
    email=''
    comment=''
    form= ContactForm(request.POST or None)
    if form.is_valid():
        name= form.cleaned_data.get("name")
        email= form.cleaned_data.get("email")
        comment=form.cleaned_data.get("comment")
        subject= "A Visitor's Comment"
        comment= name + " with the email, " + email + ", sent the following message:\n\n" + comment;
        send_mail(subject, comment, 'rupesh.thapa2050@gmail.com', [email])
        context= {'form': form}
        messages.info(request, 'Your message has been sent.')
        return render(request, 'contact.html', context)
    else:
        context= {'form': form}
    return render(request, 'contact.html', context)
