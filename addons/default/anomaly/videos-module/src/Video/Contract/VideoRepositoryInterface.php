<?php namespace Anomaly\VideosModule\Video\Contract;

use Anomaly\Streams\Platform\Entry\Contract\EntryRepositoryInterface;

interface VideoRepositoryInterface extends EntryRepositoryInterface
{

    /**
     * @param $slug
     * @return mixed
     */
    public function findBySlug($slug);
}
