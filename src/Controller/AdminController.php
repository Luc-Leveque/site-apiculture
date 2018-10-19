<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Topic;
use App\Form\EditType;
use App\Form\TestType;
use App\Entity\Article;
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
     * @Route("admin/show_comment_article", name="show_comment")
     */
    public function showCommentArticle(){
        $repo = $this->getDoctrine()->getRepository(CommentArticle::class);

        $comments = $repo->findAll();

        return $this->render('admin/show_comment_article.html.twig',[
            'controller_name' => 'AdminController',
            'comments_arts' => $comments
        ]);
    }


    /**
     * @Route("/admin/delete/comment/{id}" , name="delete_comment")
     */
    public function deleteComment(CommentArticle $comment, EntityManagerInterface $em) {
        $em->remove($comment);
        $em->flush();

        return $this->redirectToRoute('show_comment');

    }


    /**
     * @Route("/admin/show_article", name="show_article")
     */
    public function showArticle(){

        $repo = $this->getDoctrine()->getRepository(Article::class);

        $articles = $repo->findAll();

        return $this->render('admin/show_article.html.twig',[
            'controller_name' => 'AdminController',
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/admin/delete/article/{id}" , name="delete_article")
     */
    public function deleteArticle(Article $article, EntityManagerInterface $em) {
        $em->remove($article);
        $em->flush();

        return $this->redirectToRoute('show_article');

    }

     /**
     * @Route("/admin/show_topic", name="admin_show_topic")
     */
    public function showTopic(){

        $repo = $this->getDoctrine()->getRepository(Topic::class);

        $topics = $repo->findAll();

        return $this->render('admin/show_topics.html.twig',[
            'controller_name' => 'AdminController',
            'topics' => $topics
        ]);
    }

    /**
     * @Route("admin/delete/topic/{id}", name="admin_delete_topic")
     */
    public function deleteTopicAdmin(Topic $topic, EntityManagerInterface $em){
        $em->remove($topic);
        $em->flush();

        return $this->redirectToRoute('admin_show_topic');
    }





    




}
