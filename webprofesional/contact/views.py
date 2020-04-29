from django.shortcuts import render, redirect
from django.urls import reverse
from django.core.mail import EmailMessage
from .forms import ContactForms

# Create your views here.
def contact(request):
    contact_form = ContactForms()
    if request.method == 'POST':
        contact_form =ContactForms(data=request.POST)
        if contact_form.is_valid():
            name = request.POST.get('name', '')
            email = request.POST.get('email', '')
            content = request.POST.get('content', '')
            # Enviamos correo y redirecionamos
            email = EmailMessage(
                "Del Mar Estilistas: Nuevo mensaje de contacto", #asunto
                "De {} <{}>\n\nEscribió:\n\n{}".format(name, email, content), #cuerpo
                "no-contestar@inbox.mailtrap.io", #email_origen
                ["victormogue@hotmail.com"],
                reply_to =[email]
            )
            try:
                email.send()
                # Todo salió bien, redireccionamos a ok
                return redirect(reverse('contact')+'?ok')
            except:
                # Algo falló, redireccionamos a Fail
                return redirect(reverse('contact')+'?fail')


    return render(request, "contact/contact.html", {'form':contact_form})