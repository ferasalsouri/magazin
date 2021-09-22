<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleWebsiteSettingCreateContactStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'Contact',
        'title_column' => 'title',


    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        "title"=>[
            'required'=>true,
        ],
        "Mobile"       ,
        "Phone"      ,
        "Email"        ,
        "Address"       ,

    ];

}
