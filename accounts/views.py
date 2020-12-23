from django.shortcuts import render, redirect
from django.contrib.auth.models import User,auth
from django.contrib import messages
from accounts.forms import EditProfileForm
from django.urls import reverse

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
             return redirect('register')
            elif User.objects.filter(email=email).exists():
             messages.info(request,'Email already taken')
             return redirect('register')
            else:
             user = User.objects.create_user(username = username, password = password, email = email, first_name = first_name, last_name = last_name)
             user.save()
             messages.info(request, 'User Created Successfully')
             return redirect('login')
               
        else:
            messages.info(request, 'Password doesnot match')
            return redirect('register')
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
            return redirect("/")
        else:
            messages.info(request,'Invalid Credentials')
            return redirect('login')
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


"""
def show(request):  
    users = Employee.objects.all()  
    return render(request,"show.html",{'employees':employees})  
def edit(request, id):  
    employee = Employee.objects.get(id=id)  
    return render(request,'edit.html', {'employee':employee})  
def update(request, id):  
    employee = Employee.objects.get(id=id)  
    form = EmployeeForm(request.POST, instance = employee)  
    if form.is_valid():  
        form.save()  
        return redirect("/show")  
    return render(request, 'edit.html', {'employee': employee})  
def destroy(request, id):  
    employee = Employee.objects.get(id=id)  
    employee.delete()  
    return redirect("/show")  """