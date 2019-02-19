<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class UsersControllerTest extends WebTestCase
{
    public function testSomething()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/register');

        $this->assertSame(200, $client->getResponse()->getStatusCode());
        $this->assertContains('utilisateur', $crawler->filter('body')->text());
        $this->assertContains('passe', $crawler->filter('body')->text());
        $this->assertContains('Adresse', $crawler->filter('body')->text());
    }
}
