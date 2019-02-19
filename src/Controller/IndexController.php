<?php

namespace App\Controller;

use App\Entity\Student;
use App\Entity\Resource;
use App\Repository\StudentRepository;
use App\Repository\ResourceRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class IndexController extends AbstractController
{
    /**
     * @Route("/", name="index")
     */
    public function index(StudentRepository $repo, ResourceRepository $repotwo)
    {
        // $resource = new Resource();
        // $student = new Student();

        // if($student->getResource() == $resource->getId){
        //     echo $resource->name;
        // }
        // else{
        //     echo 'No resource';
        // }

        $student = $repo->findAll();
        $resource = $repotwo->findAll();
        return $this->render('index/index.html.twig', [
            'resource' => $resource,
            'student' => $student,
            'controller_name' => 'IndexController',
        ]);
    }
}
