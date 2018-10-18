<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Topic;
use App\Form\ForumType;
use App\Form\TopicType;
use App\Entity\MessageTopic;
use App\Form\RegistrationType;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class ForumController extends AbstractController
{

    /**
     * @Route("/Forum", name="Forum")
     */
    public function index()
    {
        $repo = $this->getDoctrine()->getRepository(Topic::class);

        $topics = $repo->findAll();


        return $this->render('forum/index.html.twig', [
            'controller_name' => 'ForumController',
            'topics' => $topics
        ]);
    }



     /**
     * @Route("/forum/new", name="forum_create")
     */
    public function form(Topic $topic = null, Request $request, ObjectManager $manager){
       // ici cette fonction permet a la fois de créer un article et de le modifier

        $topic = new Topic();
       

        $form = $this->createForm(TopicType::class, $topic);
        
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            

            $manager->persist($topic);
            $manager->flush();

            return $this->redirectToRoute('forum_show', ['id' => $topic->getId()]);
        }

        return $this->render('blog/create.html.twig', [
            'formTopic' => $form->createView()
        ]);
    }


    /**
     * @Route("/forum/{id}", name="forum_show")
     */
    public function show(Topic $topic, Request $request, ObjectManager $manager){
        $messageTopic= new MessageTopic();
        $messageTopic->setAuthor($this->getUser());
        

        $form = $this->createForm(MessageTopicType::class, $messageTopic);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $messageTopic->setDatePost(new \DateTime())
                    ->setArticle($topic);
             
            $manager->persist($messageTopic);
            $manager->flush();

            return $this->redirectToRoute('forum_show', ['id' => $topic->getID()]);
        }

        return $this->render('forum/show.html.twig',[
            'topic' => $topic,
            'messageTopicForm' => $form->createView()
        ]);

    }



}
