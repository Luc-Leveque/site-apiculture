<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
/**
 * @ORM\Entity(repositoryClass="App\Repository\UserRepository")
 * @UniqueEntity(
 *  fields={"email"}, 
 *  message="L'email que vous avez indiqué est déja utilisé !"
 * )
 * @UniqueEntity(
 * fields={"username"},
 * message="Le pseudo que vous avez indiqué est déja utilisé !"
 * )
 */
class User implements UserInterface
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Email()
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Regex(
     * pattern = "/^[a-zA-Z0-9\-\_]+$/",
     * message = "Votre pseudo n'est pas conforme"
     * )
     */
    private $username;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Length(min="8", minMessage="Votre mot de passe doit faire minimum 8 caractères")
     */
    private $password;

    /**
     * @Assert\EqualTo(propertyPath="password", message="Mot de passe taper non identique !")
     */
    public $confirm_password;

    /**
     * @ORM\Column(type="integer")
     */
    private $level;



    /**
     * @ORM\OneToMany(targetEntity="App\Entity\CommentArticle", mappedBy="author", orphanRemoval=true)
     */
    private $commentArticles;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Topic", mappedBy="author")
     */
    private $topics;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Post", mappedBy="author")
     */
    private $posts;

    

    public function __construct()
    {
        $this->commentArticles = new ArrayCollection();
        $this->messageTopics = new ArrayCollection();
        $this->topics = new ArrayCollection();
        $this->posts = new ArrayCollection();
    }



    

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getUsername(): ?string
    {
        return $this->username;
    }

    public function setUsername(string $username): self
    {
        $this->username = $username;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    public function eraseCredentials() {}

    public function getSalt() {}

    public function getRoles(){
        return ['ROLE_USER'];
    }

    public function getLevel(): ?int
    {
        return $this->level;
    }

    public function setLevel(int $level): self
    {
        $this->level = $level;

        return $this;
    }





    /**
     * @return Collection|CommentArticle[]
     */
    public function getCommentArticles(): Collection
    {
        return $this->commentArticles;
    }

    public function addCommentArticle(CommentArticle $commentArticle): self
    {
        if (!$this->commentArticles->contains($commentArticle)) {
            $this->commentArticles[] = $commentArticle;
            $commentArticle->setAuthor($this);
        }

        return $this;
    }

    public function removeCommentArticle(CommentArticle $commentArticle): self
    {
        if ($this->commentArticles->contains($commentArticle)) {
            $this->commentArticles->removeElement($commentArticle);
            // set the owning side to null (unless already changed)
            if ($commentArticle->getAuthor() === $this) {
                $commentArticle->setAuthor(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Topic[]
     */
    public function getTopics(): Collection
    {
        return $this->topics;
    }

    public function addTopic(Topic $topic): self
    {
        if (!$this->topics->contains($topic)) {
            $this->topics[] = $topic;
            $topic->setAuthor($this);
        }

        return $this;
    }

    public function removeTopic(Topic $topic): self
    {
        if ($this->topics->contains($topic)) {
            $this->topics->removeElement($topic);
            // set the owning side to null (unless already changed)
            if ($topic->getAuthor() === $this) {
                $topic->setAuthor(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Post[]
     */
    public function getPosts(): Collection
    {
        return $this->posts;
    }

    public function addPost(Post $post): self
    {
        if (!$this->posts->contains($post)) {
            $this->posts[] = $post;
            $post->setAuthor($this);
        }

        return $this;
    }

    public function removePost(Post $post): self
    {
        if ($this->posts->contains($post)) {
            $this->posts->removeElement($post);
            // set the owning side to null (unless already changed)
            if ($post->getAuthor() === $this) {
                $post->setAuthor(null);
            }
        }

        return $this;
    }

    

   
}
