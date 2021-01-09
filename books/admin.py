from django.contrib import admin
from .models import Book, Comment, Library
# Register your models here.
admin.site.register(Book)
admin.site.register(Library)
@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display = ('name', 'body', 'book', 'rating', 'created_on', 'active')
    list_filter = ('active', 'created_on')
    search_fields = ('name', 'body')
    actions = ['approve_comments']

    def approve_comments(self, request, queryset):
        queryset.update(active=True)