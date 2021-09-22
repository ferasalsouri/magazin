<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleWebsiteSettingCreateWebsiteSettingFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [


       
        'title'           =>  'anomaly.field_type.text',
        "Longitude"         =>'anomaly.field_type.text',
        "latitude"         =>'anomaly.field_type.text',

        "logo" => [
            "type"   => "anomaly.field_type.file",
            "config" => [
                "folders"       => ["images"],
                "aspect_ratio"  => null,
                "min_height"    => 400
            ]
        ],
        'Facebook'        =>  'anomaly.field_type.url',
        'Instagram'        =>  'anomaly.field_type.url',
        'LinkedIn'        =>  'anomaly.field_type.url',
        'Twitter'         =>  'anomaly.field_type.url',
        "Mobile"         =>'anomaly.field_type.text',
        "Phone"         =>'anomaly.field_type.text',
        "email"         =>'anomaly.field_type.email',
        "Address"         =>'anomaly.field_type.textarea',



        

    ];

}
