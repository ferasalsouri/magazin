<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleWebsiteSettingCreateLogoStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'Logo',
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
        "logo"=>[
            'required'     => true,
        ],
    ];

}
