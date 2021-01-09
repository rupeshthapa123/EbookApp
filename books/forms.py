from .models import Comment, Library
from django import forms

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ('name', 'body', 'rating')

class FavouriteForm(forms.ModelForm):
    class Meta:
        model = Library
        fields = ()