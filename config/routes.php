<?php
use App\Controllers\BloodController;

$app->group('',
    //BloodController function
    function () {

        $this->get('/breeds', BloodController::class . ':search');
        $this->get('/breeds/{ID}', BloodController::class . ':show');
});
