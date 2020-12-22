<?php
namespace src\Controller;

class ContactController extends AbstractController {
    private $mailer;
    private $transport;

    public function __construct(){
        parent::__construct();
        $this->transport = (new \Swift_SmtpTransport('smtp.mailtrap.io',25));
        $this->transport->setUsername("3dd84281bc8679");
        $this->transport->setPassword("8a9180301c670a");

        $this->mailer = new \Swift_Mailer($this->transport);
    }

    public function send(){
        // /contact/send
        if($_POST){
            $message = (new \Swift_Message($_POST["Objet"]));
            $message->setFrom($_POST["email"]);
            $message->setTo("admin@cesi.fr");
            $message->setBody($_POST["Description"]);

            $this->mailer->send($message);
        }else{
            //Affichage du formulaire
            return $this->twig->render('Contact/form.html.twig');
        }


    }


}