<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\User;
use App\Entity\Comment;
use App\Form\ArticleType;
use App\Form\CommentType;
use App\Entity\CommentArticle;
use App\Form\CommentArticleType;
use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class BlogController extends AbstractController
{
    /**
     * @Route("/blog", name="blog")
     */
    public function index()
    {
        $repo = $this->getDoctrine()->getRepository(Article::class);

        $articles = $repo->findAll();


        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles
        ]);
    }


    /**
     * @Route("/", name="home")
     */
    public function home(){

        $curl = curl_init();
        curl_setopt($curl,CURLOPT_URL,"http://plus.lefigaro.fr/tag/apiculture/rss.xml");
        curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);
        $contenu = curl_exec($curl);
        $xml = new \SimpleXMLElement($contenu);


        return $this->render('blog/home.html.twig',
            [
                'controller_name' => 'BlogController',
                'articles' =>$xml
            ]);
    }


     /**
     * @Route("/blog/new", name="blog_create")
     * @Route("blog/{id}/edit", name="blog_edit")
     */
    public function form(Article $article = null, Request $request, ObjectManager $manager){
       // ici cette fonction permet a la fois de créer un article et de le modifier

       if(!$article){
        $article = new Article();
       }

        $form = $this->createForm(ArticleType::class, $article);
        
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            if(!$article->getId()){
                $article->setCreateAt(new \DateTime());
            }
            // si article existe pas (donc pas de id on met une date)
            
            $article->setCreateAt(new \DateTime());
            

            $manager->persist($article);
            $manager->flush();

            return $this->redirectToRoute('blog_show', ['id' => $article->getId()]);
        }

        return $this->render('blog/create.html.twig', [
            'formArticle' => $form->createView(),
            'editMode' => $article->getId() !== null
        ]);
    }



 

    /**
     * @Route("/blog/{id}", name="blog_show")
     */
    public function show(Article $article, Request $request, ObjectManager $manager){
        $commentArticle = new CommentArticle();
        $commentArticle->setAuthor($this->getUser());
        


        $form = $this->createForm(CommentArticleType::class, $commentArticle);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $commentArticle->setCreatedAt(new \DateTime())
                    ->setArticle($article);
             
                    

            $manager->persist($commentArticle);
            $manager->flush();

            return $this->redirectToRoute('blog_show', ['id' => $article->getID()]);
        }

        return $this->render('blog/show.html.twig',[
            'article' => $article,
            'commentArticleForm' => $form->createView()
        ]);

    }





   




}
