<?php
/**
 * Created by PhpStorm.
 * User: ABU-AHMAD
 * Date: 2/21/2017
 * Time: 6:39 PM
 */

namespace Anomaly\VideosModule\Http\Controller;


use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Anomaly\VideosModule\Video\Contract\VideoInterface;
use Anomaly\VideosModule\Video\Contract\VideoRepositoryInterface;
use Composer\Repository\RepositoryInterface;

class VideosController extends  PublicController
{

    public function index()
    {
        $this->breadcrumbs->add('Home','/');
        $this->breadcrumbs->add('Series','series');
        $this->breadcrumbs->add('Videos','videos');
        $this->template->set('meta_title','Videos');
        return $this->view->make('anomaly.module.videos::videos/index');
    }
    public function create()
    {

        return $this->view->make('anomaly.module.videos::videos/create');
    }
    public function view(VideoRepositoryInterface $videos,$slug)
    {

        /* @var VideoInterface $video*/

        if(!$video = $videos->findBySlug($slug)){

        abort('404');
       }
        $this->breadcrumbs->add('Home','/');
        $this->breadcrumbs->add('Module','videos');
        $this->breadcrumbs->add('Series','series');
        $this->breadcrumbs->add($video->title, $video->route('view'));
        $this->template->set('meta_title',$video->title);
        return $this->view->make('anomaly.module.videos::videos/view',compact('video'));
    }
}