<?php namespace Anomaly\WebsiteSettingModule\Map;

use Anomaly\WebsiteSettingModule\Map\Contract\MapRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class MapRepository extends EntryRepository implements MapRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var MapModel
     */
    protected $model;

    /**
     * Create a new MapRepository instance.
     *
     * @param MapModel $model
     */
    public function __construct(MapModel $model)
    {
        $this->model = $model;
    }
}
