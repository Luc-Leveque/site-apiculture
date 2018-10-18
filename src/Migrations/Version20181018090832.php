<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20181018090832 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE message_topic (id INT AUTO_INCREMENT NOT NULL, author_id INT NOT NULL, topic_id INT NOT NULL, content LONGTEXT NOT NULL, date_post DATETIME NOT NULL, INDEX IDX_62E621F0F675F31B (author_id), INDEX IDX_62E621F01F55203D (topic_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE message_topic ADD CONSTRAINT FK_62E621F0F675F31B FOREIGN KEY (author_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE message_topic ADD CONSTRAINT FK_62E621F01F55203D FOREIGN KEY (topic_id) REFERENCES topic (id)');
        $this->addSql('ALTER TABLE user DROP password_requested_at, DROP token');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE message_topic');
        $this->addSql('ALTER TABLE user ADD password_requested_at DATETIME DEFAULT NULL, ADD token VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci');
    }
}
