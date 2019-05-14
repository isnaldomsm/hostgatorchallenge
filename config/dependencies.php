<?php
// DIC configuration
/** @var Pimple\Container $container */
//class dafault Pimple
$container = $app->getContainer();


$container->register(new \App\Services\DatabaseServices\EloquentServiceProvider());
