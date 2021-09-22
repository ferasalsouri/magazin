<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleVideosCreateCategoriesStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'categories',
        'translatable' => true,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        'name'        => [

            'required'     => true,
            'translatable' => true,
        ],
        'slug'=> [

            'required'     => true,
            'unique' => true,
            'config'=>[
                "slugify"   => 'name',
            ],
        ],
        'description'        => [

            'required'     => true,
            'translatable' => true,
        ],



    ];

}
