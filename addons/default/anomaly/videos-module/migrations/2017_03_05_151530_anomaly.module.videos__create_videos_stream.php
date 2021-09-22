<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleVideosCreateVideosStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'videos',
        'title_column' => 'title',
        'translatable' => true,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        'poster',
        'video'        => [

            'required'     => true,
        ],


        'title'        => [

            'required'     => true,
            'translatable' => true,
        ],
        'slug'=> [

            'required'     => true,
            'unique' => true,
        ],
        'description'        => [

            'required'     => true,
            'translatable' => true,
        ],
        'series'             =>[
            'required' => true,
        ],
        'categories',






    ];
}
