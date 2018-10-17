<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Psr\Log\LoggerInterface;


class DocumentationController extends AbstractController
{
    /**
     * @Route("/documentation", name="documentation_apiculture")
     */
    public function index()
    {
        return $this->render('documentation/index.html.twig');
    }

    /**
     * @Route("/documentation/history", name="documentation_history")
     */
    public function showHistory(ArticleRepository $repo)
    {
        $article = $repo->findByTitle('Historique');

        return $this->render('documentation/history.html.twig', [
            'article' => $article
        ]);
    }

    /**
     * @Route("/documentation/bees", name="documentation_bees")
     */
    public function showBees(ArticleRepository $repo)
    {
        $article = $repo->findByTitle('Les abeilles');

        return $this->render('documentation/bees.html.twig', [
            'article' => $article
        ]);
    }

    /**
     * @Route("/documentation/hive", name="documentation_hive")
     */
    public function showHive(ArticleRepository $repo)
    {        
        $article = $repo->findByTitle('La ruche');

        return $this->render('documentation/hive.html.twig', [
            'article' => $article
        ]);
    }

    /**
     * @Route("/documentation/products", name="documentation_products")
     */
    public function showProducts(ArticleRepository $repo, LoggerInterface $logger)
    {
        $articleHoney = $repo->findByTitle('Le miel');
        $articleRoyalJelly = $repo->findByTitle('La gelée royale');
        $articleWax = $repo->findByTitle('La cire');

        $articles = [$articleHoney, $articleRoyalJelly, $articleWax];

        return $this->render('documentation/products.html.twig', [
            'articles' => $articles
        ]);
    }

}