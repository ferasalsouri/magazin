<?php namespace Anomaly\WebsiteSettingModule\Http\Controller\Admin;

use Anomaly\WebsiteSettingModule\Map\Form\MapFormBuilder;
use Anomaly\WebsiteSettingModule\Map\Table\MapTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class MapController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param MapTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(MapTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param MapFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(MapFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param MapFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(MapFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
