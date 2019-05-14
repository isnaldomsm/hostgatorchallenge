<?php
// DIC configuration
/** @var Pimple\Container $container */
//class dafault Pimple
$container = $app->getContainer();


$container->register(new \App\Services\DatabaseServices\EloquentServiceProvider());


$container['logger'] = function ($c) {
	$settings = $c->get('settings')['logger'];
	$logger = new Monolog\Logger($settings['name']);
	$logger->pushProcessor(new Monolog\Processor\UidProcessor());
	$logger->pushHandler(new Monolog\Handler\StreamHandler($settings['path'], $settings['level']));
	return $logger;
};


 $container['thecatapi'] = function ($c) {
	$settings = $c->get('settings')['thecatapi'];

	// default  credentials
	$genericClass = new stdClass();

	// set values at classes properties
	$genericClass->{'apiKey'} = $settings['apiKey'];
	$genericClass->{'apiUrl'} = $settings['apiUrl'];

	return $genericClass;
};
