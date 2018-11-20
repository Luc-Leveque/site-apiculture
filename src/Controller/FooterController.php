<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class FooterController extends AbstractController
{
    /**
     * @Route("/mentions-legales", name="legals")
     */
    
    public function legals()
    {

        return $this->render('footer/legals.html.twig');
        }
    /**
     * @Route("/conditions-utilisations", name="terms")
     */

    public function termsOfUse()
    {
        return $this->render('footer/terms-use.html.twig');
        }
    /**
     * @Route("/contact", name="contact")
     */

    public function contact()
    {
        return $this->render('footer/contact.html.twig');
    }

    /**
     * @Route("/contact", name="send-mail")
     */
    public function sendMail(){
        ini_set( 'display_errors', 1 );
        error_reporting( E_ALL );

        $from = $_POST['email']; 
        $to = "soljsn@laposte.net"; 
        $subject = $_POST['object'];
        $message = $_POST['message'];
        $headers = "From:" . $_POST['email']; 
        mail($to,$subject,$message, $headers);
        return $this->render('footer/contact.html.twig');

    }
}