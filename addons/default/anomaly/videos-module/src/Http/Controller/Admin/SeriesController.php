<?php namespace Anomaly\VideosModule\Http\Controller\Admin;

use Anomaly\VideosModule\Series\Form\SeriesFormBuilder;
use Anomaly\VideosModule\Series\Table\SeriesTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class SeriesController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param SeriesTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(SeriesTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param SeriesFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(SeriesFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param SeriesFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(SeriesFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
