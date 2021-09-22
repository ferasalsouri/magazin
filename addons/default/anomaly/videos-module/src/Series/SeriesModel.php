<?php namespace Anomaly\VideosModule\Series;

use Anomaly\VideosModule\Series\Contract\SeriesInterface;
use Anomaly\Streams\Platform\Model\Videos\VideosSeriesEntryModel;
use Anomaly\VideosModule\Video\VideoModel;

class SeriesModel extends VideosSeriesEntryModel implements SeriesInterface
{

    public function video(){

        return $this->hasMany(VideoModel::class,'series_id');
    }
}
