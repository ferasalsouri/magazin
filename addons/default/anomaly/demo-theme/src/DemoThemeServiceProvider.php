<?php namespace Anomaly\DemoTheme;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;

class DemoThemeServiceProvider extends AddonServiceProvider
{

    protected $plugins = [];

    protected $commands = [];

    protected $routes = [
        
        "/"         =>"Anomaly\DemoTheme\Http\Controller\MainController",
        "/search"   =>"Anomaly\DemoTheme\Http\Controller\MainController@search",
        "/contact" =>"Anomaly\DemoTheme\Http\Controller\MainController@getContact",
        "/sendcontact" =>"Anomaly\DemoTheme\Http\Controller\MainController@postContact",
        "/about" =>"Anomaly\DemoTheme\Http\Controller\MainController@about",
    ];

    protected $middleware = [];

    protected $listeners = [];

    protected $aliases = [];

    protected $bindings = [];

    protected $providers = [];

    protected $singletons = [];

    protected $overrides = [];

    protected $mobile = [];

    public function register()
    {
    }

    public function map()
    {
    }

}
