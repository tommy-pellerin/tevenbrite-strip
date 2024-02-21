class EventCreatorMailer < ApplicationMailer
  default from: "tommytp@hotmail.fr"

  def participation_email(attendance)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @attendance = attendance

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://localhost:3000/users/sign_in' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: "na_ru_to619@hotmail.fr", subject: 'Une inscription à ton event !') 
  end
end
