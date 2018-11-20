<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class FooterController extends AbstractController
{
    /**
     * @Route("/mentions-legales", name="legals")
     */
    
    public function index()
    {

        return $this->render('footer/legals.html.twig');
        }
    /**
     * @Route("/conditions-utilisations", name="terms")
     */

    public function index2()
    {
        return $this->render('footer/terms-use.html.twig');
        }
    /**
     * @Route("/contact", name="contact")
     */

    public function index3()
    {
        return $this->render('footer/contact.html.twig');
        }
}