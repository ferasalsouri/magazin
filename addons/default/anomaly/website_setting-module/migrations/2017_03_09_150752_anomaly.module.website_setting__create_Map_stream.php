<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleWebsiteSettingCreateMapStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'Map',
        'title_column' => 'title',

    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        'title'=>[
            'required'=>true,
        ],
        "Longitude" =>[
            'required'=>true
        ] ,
        "latitude" =>[
            'required'=>true
        ]  ,
    ];

}
