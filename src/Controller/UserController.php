<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\EditType;
use App\Form\TestType;
use App\Form\RegistrationType;
use App\Form\ChangePasswordType;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserController extends AbstractController
{

    /**
     * @Route("/user", name="user_info")
     */
    public function show(){
            return $this->render('user/user.html.twig');
    }

    /**
     * @Route("/edit/user", name="user_edit")
     */
    public function edit(Request $request):Response
    {
        $user = $this->getUser();

        $form = $this->createForm(EditType::class, $user);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){


            $this->getDoctrine()->getManager()->flush();

           
              
            return $this->redirectToRoute('user_info');
        }

        return $this->render('user/edit.html.twig', [
            'user' => $user,
            'formEdit' => $form->createView(),
        ]);
    }

    /**
     * @Route("/change-password", name="user_change_password")
     */
    public function changePassword(Request $request, UserPasswordEncoderInterface $encoder): Response
    {
        $user = $this->getUser();
        $form = $this->createForm(ChangePasswordType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $user->setPassword($encoder->encodePassword($user, $form->get('password')->getData()));
            $this->getDoctrine()->getManager()->flush();
            return $this->redirectToRoute('security_logout');
        }
        return $this->render('user/change_password.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    

    








   






    




}
