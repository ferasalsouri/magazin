<?php namespace Anomaly\VideosModule\Series;

use Anomaly\VideosModule\Series\Contract\SeriesRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class SeriesRepository extends EntryRepository implements SeriesRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var SeriesModel
     */
    protected $model;

    /**
     * Create a new SeriesRepository instance.
     *
     * @param SeriesModel $model
     */
    public function __construct(SeriesModel $model)
    {
        $this->model = $model;
    }

    public function findBySlug($slug){
    return $this->model->where('slug',$slug)->first();
}
}
