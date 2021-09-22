<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;
use Anomaly\VideosModule\Series\SeriesModel;
use\Anomaly\VideosModule\Category\CategoryModel;
class AnomalyModuleVideosCreateVideosFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [

        'title'=>'anomaly.field_type.text',
        'video'=>'anomaly.field_type.video',
        'name'=>'anomaly.field_type.text',
        'description'=>'anomaly.field_type.textarea',
        'slug'=>[
            "type"   => "anomaly.field_type.slug",
            "config" => [
                "type"      => "_",
                "slugify"   => 'title',
            ]
        ],
        'poster'=>'anomaly.field_type.file',
        'series'=>[
            'type'=>'anomaly.field_type.relationship',
            'config'=>[
                'title_name'=>'title',
                'related'=>SeriesModel::class
            ],
        ],
        'categories'=>[
            'type'=>'anomaly.field_type.multiple',
            'config'=>[
                'title_name'=>'name',
                'related'=>CategoryModel::class
            ],

        ],
    ];

}
