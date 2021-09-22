<?php namespace Anomaly\WebsiteSettingModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;

class WebsiteSettingModuleServiceProvider extends AddonServiceProvider
{



    protected $routes = [
        'admin/website_setting/' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\SocialNetworkController@index',
        'admin/website_setting/edit/{id}' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\SocialNetworkController@edit',


        'admin/website_setting/Logo' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\LogoController@index',
        'admin/website_setting/Logo/edit/{id}' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\LogoController@edit',

        'admin/website_setting/Contact' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\ContactController@index',
        'admin/website_setting/Contact/edit/{id}' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\ContactController@edit',

        'admin/website_setting/Map' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\MapController@index',
        'admin/website_setting/Map/edit/{id}' => 'Anomaly\WebsiteSettingModule\Http\Controller\Admin\MapController@edit'
    ];


}
