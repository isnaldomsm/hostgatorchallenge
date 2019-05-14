<?php
namespace App\Helpers;
use Illuminate\Database\Capsule\Manager;
class ConnectionHelper
{
	/**
	* standard library function for error prevention
	*/
	public static function hasDatabaseConnection(Manager $db) : bool
	{
		try {
			$pdo = $db::connection()->getPdo();
			return true;
		} catch (\Exception $e) {
			return false;
		}
	}
}
