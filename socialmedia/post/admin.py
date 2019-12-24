from django.contrib import admin
from post.models import *

class PostAdmin(admin.ModelAdmin):
    list_display = ('title','description','get_post_status','createdate')
    def get_post_status(self, obj):
        if obj.poststatus == 1:
            return 'Active'
        else:
            return 'Not Active'

    get_post_status.short_description = 'Status'

admin.site.register(Post,PostAdmin)

class PostLikeAdmin(admin.ModelAdmin):
    list_display = ('from_profile','to_profile','Post','is_like','createdate')
    def from_profile(self, obj):
        return obj.profileid.firstname
    def to_profile(self, obj):
        return obj.postid.profileid.firstname
    def Post(self, obj):
        return obj.postid.title
    
admin.site.register(Postlikes,PostLikeAdmin)

class PostRatingAdmin(admin.ModelAdmin):
    list_display = ('from_profile','to_profile','Post','rating','createdate')
    def from_profile(self, obj):
        return obj.profileid.firstname
    def to_profile(self, obj):
        return obj.postid.profileid.firstname
    def Post(self, obj):
        return obj.postid.title

admin.site.register(Postratings,PostRatingAdmin)

class PostShareAdmin(admin.ModelAdmin):
    list_display = ('post','to_profile','sharedto','createdate')
    def post(self, obj):
        return obj.postid.title
    def to_profile(self, obj):
        return obj.postid.profileid.firstname
    def sharedto(self, obj):
        return obj.sharedto.profileid.firstname
admin.site.register(Postsharings,PostShareAdmin)