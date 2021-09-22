<?php
/**
 * Created by PhpStorm.
 * User: ABU-AHMAD
 * Date: 3/9/2017
 * Time: 3:02 PM
 */

namespace Anomaly\DemoTheme\Http\Controller;


use Anomaly\Streams\Platform\Http\Controller\PublicController;


use Illuminate\Http\Request;
use Mail;
use Anomaly\PostsModule\Post\PostModel;

class MainController extends PublicController
{
    public function index()
    {
        $this->breadcrumbs->add('Home', '/');

        return view('anomaly.theme.demo::site/main');
    }

    public function getContact()
    {
        $this->breadcrumbs->add('contact', 'contact');

        return view('anomaly.theme.demo::site/contact');
    }

    public function postContact(Request $request)
    {






        $data = array(
            'name' => $request->name,
            'email' => $request->email,
            'website' => $request->website,
            'subject' => $request->subject,
            'bodyMessage' => $request->message,

        );
        Mail::send('anomaly.theme.demo::emails.contact', $data, function ($message) use ($data) {

            $message->from($data['email']);
            $message->to('feras.el.souri@gmail.com');
            $message->subject($data['subject']);

        });

            return back();

    }

    public function about()
    {
        $this->breadcrumbs->add('about', 'about');

        return view('anomaly.theme.demo::site/aboutus');
    }

    public function search(Request $request)
    {

        $search = $request->input("search");
        $data = PostModel::where("title", "like", "%$search%")->get();

        return view('anomaly.theme.demo::site/search', compact('data', 'search'));
    }


}