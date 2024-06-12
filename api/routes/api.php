<?php

use Illuminate\Support\Facades\Route;

Route::middleware(['cors'])->get('/', function () {
    return json_encode("Hello from backend");
});
