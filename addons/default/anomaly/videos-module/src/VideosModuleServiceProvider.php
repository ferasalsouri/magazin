<?php namespace Anomaly\VideosModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;
use Anomaly\Streams\Platform\Model\Videos\VideosSeriesEntryModel;
use Anomaly\Streams\Platform\Model\Videos\VideosVideosEntryModel;
use Anomaly\VideosModule\Series\Contract\SeriesRepositoryInterface;
use Anomaly\VideosModule\Series\SeriesModel;
use Anomaly\VideosModule\Series\SeriesRepository;
use Anomaly\VideosModule\Video\Contract\VideoRepositoryInterface;
use Anomaly\VideosModule\Video\VideoModel;
use Anomaly\VideosModule\Video\VideoRepository;

class VideosModuleServiceProvider extends AddonServiceProvider
{



    protected $routes = [
        'videos' => 'Anomaly\VideosModule\Http\Controller\VideosController@index',
        'videos/watch/{slug}' => [
            'as' =>'anomaly.module.videos::videos.view',
            'uses'=>'Anomaly\VideosModule\Http\Controller\VideosController@view',
        ],
        'series' => 'Anomaly\VideosModule\Http\Controller\SeriesController@index',
        'videos/create' => 'Anomaly\VideosModule\Http\Controller\VideosController@create',

        'series/videos/{slug}' => [
            'as' =>'anomaly.module.videos::series.view',
            'uses'=>'Anomaly\VideosModule\Http\Controller\SeriesController@view',
        ],

        'admin/videos' => 'Anomaly\VideosModule\Http\Controller\Admin\VideosController@index',
        'admin/videos/create' => 'Anomaly\VideosModule\Http\Controller\Admin\VideosController@create',
        'admin/videos/edit/{id}' => 'Anomaly\VideosModule\Http\Controller\Admin\VideosController@edit',

        'admin/videos/categories' => 'Anomaly\VideosModule\Http\Controller\Admin\CategoriesController@index',
        'admin/videos/categories/create' => 'Anomaly\VideosModule\Http\Controller\Admin\CategoriesController@create',
        'admin/videos/categories/edit/{id}' => 'Anomaly\VideosModule\Http\Controller\Admin\CategoriesController@edit',
        
        'admin/videos/series' => 'Anomaly\VideosModule\Http\Controller\Admin\SeriesController@index',
        'admin/videos/series/create' => 'Anomaly\VideosModule\Http\Controller\Admin\SeriesController@create',
        'admin/videos/series/edit/{id}' => 'Anomaly\VideosModule\Http\Controller\Admin\SeriesController@edit',

    ];

    protected $bindings=[
        VideosVideosEntryModel::class=>VideoModel::class,
        VideosSeriesEntryModel::class=>SeriesModel::class,
    ];
    protected $singletons=[
        VideoRepositoryInterface::class=>VideoRepository::class,
        SeriesRepositoryInterface::class =>SeriesRepository::class,
    ];
}
