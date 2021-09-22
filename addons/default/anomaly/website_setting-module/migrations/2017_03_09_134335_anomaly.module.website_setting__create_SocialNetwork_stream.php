<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleWebsiteSettingCreateSocialNetworkStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'SocialNetwork',
        'title_column' => 'title',


    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [

         'title'=>[
             'required'=>true,],
        'Facebook'   ,
        'Twitter'  ,
        'Instagram'   ,
        'LinkedIn'  ,
    ];

}
