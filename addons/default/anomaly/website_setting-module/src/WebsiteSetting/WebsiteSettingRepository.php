<?php namespace Anomaly\WebsiteSettingModule\WebsiteSetting;

use Anomaly\WebsiteSettingModule\WebsiteSetting\Contract\WebsiteSettingRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class WebsiteSettingRepository extends EntryRepository implements WebsiteSettingRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var WebsiteSettingModel
     */
    protected $model;

    /**
     * Create a new WebsiteSettingRepository instance.
     *
     * @param WebsiteSettingModel $model
     */
    public function __construct(WebsiteSettingModel $model)
    {
        $this->model = $model;
    }
}
