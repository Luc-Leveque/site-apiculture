<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class ActualiteController extends AbstractController
{
    /**
     * @Route("/actualite", name="actualite")
     */
    public function index()
    {
        $curl = curl_init();
        curl_setopt($curl,CURLOPT_URL,"http://plus.lefigaro.fr/tag/apiculture/rss.xml");
        curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);
        $contenu = curl_exec($curl);
        $xml = new \SimpleXMLElement($contenu);



        return $this->render('actualite/index.html.twig', [
            'controller_name' => 'ActualiteController',
            'articles' =>$xml
        ]);
        }

}
