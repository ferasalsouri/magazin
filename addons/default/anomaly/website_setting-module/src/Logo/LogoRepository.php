<?php namespace Anomaly\WebsiteSettingModule\Logo;

use Anomaly\WebsiteSettingModule\Logo\Contract\LogoRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class LogoRepository extends EntryRepository implements LogoRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var LogoModel
     */
    protected $model;

    /**
     * Create a new LogoRepository instance.
     *
     * @param LogoModel $model
     */
    public function __construct(LogoModel $model)
    {
        $this->model = $model;
    }
}
