<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\TopicRepository")
 */
class Topic
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $topic_nom;



    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Category", inversedBy="topic")
     * @ORM\JoinColumn(nullable=false)
     */
    private $category;

    public function getId(): ?int
    {
        return $this->id;
    }


    public function setTopicId(int $topic_id): self
    {
        $this->topic_id = $topic_id;

        return $this;
    }

    public function getTopicNom(): ?string
    {
        return $this->topic_nom;
    }

    public function setTopicNom(string $topic_nom): self
    {
        $this->topic_nom = $topic_nom;

        return $this;
    }


    public function getTopicRelIdCat(): ?Category
    {
        return $this->topic_rel_id_cat;
    }

    public function setTopicRelIdCat(?Category $topic_rel_id_cat): self
    {
        $this->topic_rel_id_cat = $topic_rel_id_cat;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }
}
