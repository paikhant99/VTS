from django.contrib import admin
from .models import CustomUser, AvailableTimeSlot, Disease, Vaccine, Vaccination, Appointment

# Register your models here.

class CustomUserAdmin(admin.ModelAdmin):
    list_display = ('username', 'email', 'role', 'is_staff')
    list_filter = ('role',)
    search_fields = ('username', 'email')
    actions = ['create_doctor']

    def create_doctor(self, request, queryset):
        for user in queryset:
            if user.role == CustomUser.DOCTOR:
                user.set_password('initial_password')  # Default password
                user.save()
    create_doctor.short_description = "Create doctor accounts with default password"

admin.site.register(CustomUser, CustomUserAdmin)
admin.site.register(AvailableTimeSlot)
admin.site.register(Disease)
admin.site.register(Vaccine)
admin.site.register(Vaccination)
admin.site.register(Appointment)