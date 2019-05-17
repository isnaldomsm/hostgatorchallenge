<?php
      use Interop\Container\ContainerInterface;
      use Slim\Http\Request;
      use Slim\Http\Response;
      use Illuminate\Support\Facades\DB;
      use App\Services\LogicalBusinessServices\CatBreedsService;
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
      				'message' => "inform parameter"
      			]);
      		}

      		return $response->withJson($data);
      	}

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
      				'message' => "Not found bloond"
      			]);
      		}
              	return $response->withJson(['data' => $result]);
      	}
      }
