<?php namespace Anomaly\VideosModule\Series\Table;

use Anomaly\Streams\Platform\Ui\Table\TableBuilder;

class SeriesTableBuilder extends TableBuilder
{

    /**
     * The table views.
     *
     * @var array|string
     */
    protected $views = [];

    /**
     * The table filters.
     *
     * @var array|string
     */
    protected $filters = [
        'title',


    ];

    /**
     * The table columns.
     *
     * @var array|string
     */
    protected $columns = [
        'title',
        'Descriptions',
    ];

    /**
     * The table buttons.
     *
     * @var array|string
     */
    protected $buttons = [
        'edit'
    ];

    /**
     * The table actions.
     *
     * @var array|string
     */
    protected $actions = [
        'delete'
    ];

    /**
     * The table options.
     *
     * @var array
     */
    protected $options = [
        'sortable'=>true,
    ];

    /**
     * The table assets.
     *
     * @var array
     */
    protected $assets = [];

}
