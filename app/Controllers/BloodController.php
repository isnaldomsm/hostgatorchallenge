<?php

namespace App\Controllers;

use Interop\Container\ContainerInterface;
use Slim\Http\Request;
use Slim\Http\Response;
use Illuminate\Support\Facades\DB;
use App\Services\LogicalBusinessServices\CatBreedsService;

class BloodController extends DataController {

	/**
	* Search Breeds by name or by experimental indexes
	*
	* @param \Slim\Http\Request  $request
	* @param \Slim\Http\Response $response
	* @param array               $args
	*
	* @return \Slim\Http\Response
	*/
	public function search(Request $request, Response $response, array $args): Response
	{
		$params = $request->getQueryParams();
		$catBreed = new CatBreedsService(
				$this->container->db,
				$this->container->thecatapi->apiKey,
				$this->container->thecatapi->apiUrl
		);

		if(isset($params['name'])){
			$data = $catBreed->searchBreedsByName($params['name']);
		} else if(isset($params['experimental'])){
			$data = $catBreed->searchBreedsByExperimental($params['experimental']);
		} else {
			$newResponse = $response->withStatus(400);
			return $newResponse->withJson([
				'code' => 400,
				'message' => "Require name or experimental query parameter"
			]);
		}

		return $response->withJson($data);
	}

	/**
	* Return a single Breed to get breed endpoint
	*
	* @param \Slim\Http\Request  $request
	* @param \Slim\Http\Response $response
	* @param array               $args
	*
	* @return \Slim\Http\Response
	*/
	public function show(Request $request, Response $response, array $args): Response
	{
		$catBreed = new CatBreedsService(
				$this->container->db,
				$this->container->thecatapi->apiKey,
				$this->container->thecatapi->apiUrl
		);
		$result = $catBreed->searchBreedByID($args['ID']);

		if(!$result){
			$newResponse = $response->withStatus(400);
			return $newResponse->withJson([
				'code' => 400,
				'message' => "No cat breed found"
			]);
		}
        	return $response->withJson(['data' => $result]);
	}
}
