<?php namespace Anomaly\WebsiteSettingModule\Http\Controller\Admin;

use Anomaly\WebsiteSettingModule\WebsiteSetting\Form\WebsiteSettingFormBuilder;
use Anomaly\WebsiteSettingModule\WebsiteSetting\Table\WebsiteSettingTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class WebsiteSettingController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param WebsiteSettingTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(WebsiteSettingTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param WebsiteSettingFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(WebsiteSettingFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param WebsiteSettingFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(WebsiteSettingFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
