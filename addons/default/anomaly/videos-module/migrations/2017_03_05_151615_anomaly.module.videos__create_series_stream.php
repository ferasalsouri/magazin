<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleVideosCreateSeriesStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'series',
        'title_column' => 'title',
        'translatable' => true,

    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
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






    ];
}
