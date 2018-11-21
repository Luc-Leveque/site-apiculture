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

        $user = $this->getUser();
 
        if(isset($user)){
            $idUser= $user->getLevel();
 
            if($idUser == 2){
 
                return $this->render('admin/admin.html.twig');
            }
            return $this->redirectToRoute('error');
        }
        return $this->redirectToRoute('security_login');
    }

    /**
     * @Route("/error", name="error")
     */
    public function showError(){
        return $this->render('admin/error.html.twig');
    }

    

    /**
     * @Route("/admin/show_user", name="show_user")
     */
    public function showUser(){

        $user = $this->getUser();
 
        if(isset($user)){
            $idUser= $user->getLevel();
 
            if($idUser == 2){
 
                $repo = $this->getDoctrine()->getRepository(User::class);

                 $users = $repo->findAll();

                return $this->render('admin/show_user.html.twig',[
                'controller_name' => 'AdminController',
                'users' => $users
                ]);
            }
            return $this->redirectToRoute('error');
        }
        return $this->redirectToRoute('security_login');
    }

    /**
     * @Route("/admin/delete/user/{id}" , name="delete_user")
     */
    public function deleteUser(User $user, EntityManagerInterface $em) {
        
        $userSite = $this->getUser();
 
        if(isset($userSite)){
            $idUser= $userSite->getLevel();
 
            if($idUser == 2){
                $em->remove($user);
                $em->flush();

                return $this->redirectToRoute('show_user');
            }
            return $this->redirectToRoute('error');
        }
        return $this->redirectToRoute('security_login');

    }

    /**
     * @Route("admin/show_comment_article", name="show_comment")
     */
    public function showCommentArticle(){

        $user = $this->getUser();
 
        if(isset($user)){
            $idUser= $user->getLevel();
 
            if($idUser == 2){
                $repo = $this->getDoctrine()->getRepository(CommentArticle::class);

                $comments = $repo->findAll();

                return $this->render('admin/show_comment_article.html.twig',[
                'controller_name' => 'AdminController',
                'comments_arts' => $comments
            ]);
            }
            return $this->redirectToRoute('error');
        }
        return $this->redirectToRoute('security_login');
    }


    /**
     * @Route("/admin/delete/comment/{id}" , name="delete_comment")
     */
    public function deleteComment(CommentArticle $comment, EntityManagerInterface $em) {

        $user = $this->getUser();
 
        if(isset($user)){
            $idUser= $user->getLevel();
 
            if($idUser == 2){
                $em->remove($comment);
                $em->flush();

                return $this->redirectToRoute('show_comment');
            }
            return $this->redirectToRoute('error');
        }
        return $this->redirectToRoute('security_login');

    }


    /**
     * @Route("/admin/show_article", name="show_article")
     */
    public function showArticle(){

        $user = $this->getUser();
 
        if(isset($user)){
            $idUser= $user->getLevel();
 
            if($idUser == 2){
                $repo = $this->getDoctrine()->getRepository(Article::class);

                $articles = $repo->findAll();

                return $this->render('admin/show_article.html.twig',[
                    'controller_name' => 'AdminController',
                    'articles' => $articles
                ]);
            }
            return $this->redirectToRoute('error');
        }
        return $this->redirectToRoute('security_login');
    }

    /**
    * @Route("/admin/delete/article/{id}" , name="delete_article")
    */
   public function deleteArticle(Article $article, EntityManagerInterface $em) {

    $user = $this->getUser();

    if(isset($user)){
        $idUser= $user->getLevel();

        if($idUser == 2){
            $em->remove($article);
            $em->flush();

            return $this->redirectToRoute('show_article');
        }
        return $this->redirectToRoute('error');
    }
    return $this->redirectToRoute('security_login');

}

     /**
     * @Route("/admin/show_topic", name="admin_show_topic")
     */
    public function showTopic(){
        $user = $this->getUser();

        if(isset($user)){

            $idUser= $user->getLevel();

            if($idUser == 2){

                $repo = $this->getDoctrine()->getRepository(Topic::class);

                $topics = $repo->findAll();

                return $this->render('admin/show_topics.html.twig',[
                    'controller_name' => 'AdminController',
                    'topics' => $topics
                ]);
            }
        return $this->redirectToRoute('error');
        }
    return $this->redirectToRoute('security_login');
    }

    /**
     * @Route("admin/delete/topic/{id}", name="admin_delete_topic")
     */
    public function deleteTopicAdmin(Topic $topic, EntityManagerInterface $em){

        $user = $this->getUser();
    
        if(isset($user)){
            $idUser= $user->getLevel();
    
            if($idUser == 2){
                $em->remove($topic);
        $em->flush();

        return $this->redirectToRoute('admin_show_topic');
            }
            return $this->redirectToRoute('error');
        }
        return $this->redirectToRoute('security_login');

    }




    




}
