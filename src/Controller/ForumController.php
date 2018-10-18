<?php

namespace App\Controller;

use App\Entity\User;
use TopicCreateType;
use App\Entity\Topic;
use App\Entity\Article;
use App\Entity\Comment;
use App\Form\TopicType;
use App\Form\ArticleType;
use App\Form\CommentType;
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
    public function showTopic(Topic $topic){
        return $this->render('forum/show.html.twig',[
            'topic' => $topic
        ]);
    }



    /**
     * @Route("/admin", name="admin")
     */
    public function show(){
        return $this->render('admin/admin.html.twig');
}

    


}
