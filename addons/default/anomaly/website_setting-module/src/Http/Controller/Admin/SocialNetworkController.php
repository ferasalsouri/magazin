<?php namespace Anomaly\WebsiteSettingModule\Http\Controller\Admin;

use Anomaly\WebsiteSettingModule\SocialNetwork\Form\SocialNetworkFormBuilder;
use Anomaly\WebsiteSettingModule\SocialNetwork\Table\SocialNetworkTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class SocialNetworkController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param SocialNetworkTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(SocialNetworkTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param SocialNetworkFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(SocialNetworkFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param SocialNetworkFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(SocialNetworkFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
