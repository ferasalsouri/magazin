<?php namespace Anomaly\VideosModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class VideosModule extends Module
{

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-file-video-o';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
        'videos'=>[
            'buttons'=>[
                'new_video'
            ],
        ],
        'series'=>[
            'buttons'=>[
                'new_series'
            ],
        ],
        'categories'=>[
            'buttons'=>[
                'new_category'
            ],
        ],
    ];
}
