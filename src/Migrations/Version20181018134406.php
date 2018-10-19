<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20181018134406 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE post (id INT AUTO_INCREMENT NOT NULL, author_id INT NOT NULL, topics_id INT NOT NULL, content LONGTEXT NOT NULL, created_at DATETIME NOT NULL, INDEX IDX_5A8A6C8DF675F31B (author_id), INDEX IDX_5A8A6C8DBF06A414 (topics_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE post ADD CONSTRAINT FK_5A8A6C8DF675F31B FOREIGN KEY (author_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE post ADD CONSTRAINT FK_5A8A6C8DBF06A414 FOREIGN KEY (topics_id) REFERENCES topic (id)');
        $this->addSql('ALTER TABLE topic DROP FOREIGN KEY FK_9D40DE1B12469DE2');
        $this->addSql('DROP INDEX IDX_9D40DE1B12469DE2 ON topic');
        $this->addSql('ALTER TABLE topic ADD title VARCHAR(255) NOT NULL, ADD created_at DATETIME NOT NULL, DROP topic_nom, CHANGE category_id author_id INT NOT NULL');
        $this->addSql('ALTER TABLE topic ADD CONSTRAINT FK_9D40DE1BF675F31B FOREIGN KEY (author_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_9D40DE1BF675F31B ON topic (author_id)');
        $this->addSql('ALTER TABLE user DROP password_requested_at, DROP token');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE post');
        $this->addSql('ALTER TABLE topic DROP FOREIGN KEY FK_9D40DE1BF675F31B');
        $this->addSql('DROP INDEX IDX_9D40DE1BF675F31B ON topic');
        $this->addSql('ALTER TABLE topic ADD topic_nom VARCHAR(100) NOT NULL COLLATE utf8mb4_unicode_ci, DROP title, DROP created_at, CHANGE author_id category_id INT NOT NULL');
        $this->addSql('ALTER TABLE topic ADD CONSTRAINT FK_9D40DE1B12469DE2 FOREIGN KEY (category_id) REFERENCES category (id)');
        $this->addSql('CREATE INDEX IDX_9D40DE1B12469DE2 ON topic (category_id)');
        $this->addSql('ALTER TABLE user ADD password_requested_at DATETIME DEFAULT NULL, ADD token VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci');
    }
}
