<?php

namespace App\Controller;

use App\Entity\Post;
use App\Entity\User;
use TopicCreateType;
use App\Entity\Topic;
use App\Form\PostType;
use App\Entity\Article;
use App\Entity\Comment;
use App\Form\TopicType;
use App\Form\ArticleType;
use App\Form\CommentType;
use App\Form\EditPostType;
use App\Form\PostEditType;
use App\Entity\CommentArticle;
use App\Form\CommentArticleType;
use App\Controller\ForumController;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ForumController extends AbstractController
{


    /**
     * @Route("/forum", name="forum")
     */
    public function home(){

        $repo = $this->getDoctrine()->getRepository(Topic::class);

        $topics = $repo->findAll();



        return $this->render('forum/index.html.twig',[
            'topics' => $topics
        ]);
    }



    /**
     * @Route("/forum/topic/create", name="create_topic")
     */
    public function create(Request $request, ObjectManager $manager){
        $topic = new Topic();
        $topic->setAuthor($this->getUser());


        $form = $this->createForm(TopicType::class, $topic);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $topic = $form->getData();

            $topic->setCreatedAt(new \DateTime());

            $manager->persist($topic);
            $manager->flush();

            return $this->redirectToRoute('forum');
        }

        return $this->render("forum/create_topic.html.twig",[
            'formTopic' => $form->createView()
        ]);
    }

    /**
     * @Route("/forum/topic/{id}", name="show_topic")
     */
    public function showTopic(Topic $topic, Request $request, ObjectManager $manager){
        $post = new Post();
        $post->setAuthor($this->getUser());

        $form = $this->createForm(PostType::class, $post);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $post->setCreatedAt(new \DateTime())
                ->setTopics($topic);

            $manager->persist($post);
            $manager->flush();

            return $this->redirectToRoute('show_topic', ['id' => $topic->getId()]);

        }

        return $this->render('forum/show.html.twig',[
            'topic' => $topic,
            'formPost' => $form->createView()
        ]);
    }


    /**
     * @Route("forum/delete/topic/{id}", name="delete_topic")
     */
    public function deleteTopic(Topic $topic, EntityManagerInterface $em){

        if($this->getUser() != null){
        $em->remove($topic);
        $em->flush();
        }

        return $this->redirectToRoute('forum');
    }

    /**
     * @Route("forum/delete/post/{id}", name="delete_post")
     */
    public function deletePost(Post $post, EntityManagerInterface $em){

        if($this->getUser() != null){
            $em->remove($post);
            $em->flush();
        }
        

        return $this->redirectToRoute('forum');    
    }

    /**
     * @Route("forum/edit_post/{id}", name="edit_post")
     */
    public function editPost(Post $post, Request $request, EntityManagerInterface $em){
        if($this->getUser() != null){
        $form = $this->createForm(PostEditType::class, $post);

        $form->handleRequest($request);

        

        if($form->isSubmitted() && $form->isValid()){
            
            $post = $form->getData();

            $em->flush();

            return $this->redirectToRoute('forum');
        }

        return $this->render("forum/edit.html.twig", [
            'editForm' => $form->createView()
        ]);
        }
        else{
            return $this->redirectToRoute('forum'); 
        }
        

    }


    




    


}
