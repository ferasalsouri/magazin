<?php namespace Anomaly\VideosModule\Http\Controller\Admin;

use Anomaly\VideosModule\Video\Form\VideoFormBuilder;
use Anomaly\VideosModule\Video\Table\VideoTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class VideosController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param VideoTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(VideoTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param VideoFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(VideoFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param VideoFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(VideoFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
