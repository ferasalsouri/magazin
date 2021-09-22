<?php namespace Anomaly\WebsiteSettingModule\SocialNetwork;

use Anomaly\WebsiteSettingModule\SocialNetwork\Contract\SocialNetworkRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class SocialNetworkRepository extends EntryRepository implements SocialNetworkRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var SocialNetworkModel
     */
    protected $model;

    /**
     * Create a new SocialNetworkRepository instance.
     *
     * @param SocialNetworkModel $model
     */
    public function __construct(SocialNetworkModel $model)
    {
        $this->model = $model;
    }
}
