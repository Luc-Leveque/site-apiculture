<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\EditType;
use App\Form\TestType;
use App\Entity\CommentArticle;
use App\Form\RegistrationType;
use App\Form\ChangePasswordType;
use App\Controller\AdminController;
use Doctrine\ORM\EntityManagerInterface;
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

    /**
     * @Route("/admin/show_user", name="show_user")
     */
    public function showUser(){

        $repo = $this->getDoctrine()->getRepository(User::class);

        $users = $repo->findAll();

        return $this->render('admin/show_user.html.twig',[
            'controller_name' => 'AdminController',
            'users' => $users
        ]);
    }

    /**
     * @Route("/admin/delete/user/{id}" , name="delete_user")
     */
    public function deleteUser(User $user, EntityManagerInterface $em) {
        $em->remove($user);
        $em->flush();

        return $this->redirectToRoute('show_user');

    }

    /**
     * @Route("admin/show_comment_article", name="show_user")
     */
    public function showCommentArticle(){
        $repo = $this->getDoctrine()->getRepository(CommentArticle::class);

        $users = $repo->findAll();

        return $this->render('admin/show_comment_article.html.twig',[
            'controller_name' => 'AdminController',
            'users' => $users
        ]);
    }





    




}
