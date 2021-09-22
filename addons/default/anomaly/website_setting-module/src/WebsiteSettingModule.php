<?php namespace Anomaly\WebsiteSettingModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class WebsiteSettingModule extends Module
{

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-cog';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
        'website',
        'Logo',
        'Contact',
        'Map',
    ];
}
