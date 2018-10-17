<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\EditType;
use App\Form\TestType;
use App\Form\RegistrationType;
use App\Form\ChangePasswordType;
use App\Controller\AdminController;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AdminController extends AbstractController
{

    /**
     * @Route("/admin", name="admin")
     */
    public function show(){
            return $this->render('admin/admin.html.twig');
    }







    




}
