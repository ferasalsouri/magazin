<?php namespace Anomaly\VideosModule\Series\Contract;

use Anomaly\Streams\Platform\Entry\Contract\EntryRepositoryInterface;

interface SeriesRepositoryInterface extends EntryRepositoryInterface
{
    /**
     * @param $slug
     * @return mixed
     */
    public function findBySlug($slug);

}
