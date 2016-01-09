<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Joke;
use App\User;
use Response;
use Input;
class JokesController extends Controller
{

    public function __construct(){
        //$this->middleware('auth.basic', ['only' => 'store']);
        // $this->middleware('auth.basic');
        $this->middleware('jwt.auth', ['except' => ['authenticate', 'index', 'show']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {        
        // 1.All is bad
        // 2. No way to attach meta data
        // 3. Linking db structure 
        // 4. No Way to signal header/response codes
        

        // $query = Input::get('search');
        $search_term = $request->input('search');
        // $limit = $request->input('limit')?$request->input('limit'):5;
        $limit = $request->input('limit', 5);


        //dd($query);
        if ($search_term)
        {
            $jokes = Joke::orderBy('id', 'DESC')->where('body', 'LIKE', "%$search_term%")->with(
            array('User'=>function($query){
                $query->select('id','name');
            })
            )->select('id', 'body', 'user_id')->paginate($limit); 

            $jokes->appends(array(
                'search' => $search_term,
                'limit' => $limit
            ));
            //$posts = Joke::where('body', 'LIKE', "%$query%")->paginate(5);
        }
        else
        {
            $jokes = Joke::orderBy('id', 'DESC')->with(
            array('User'=>function($query){
                $query->select('id','name');
            })
            )->select('id', 'body', 'user_id')->paginate($limit); 

            $jokes->appends(array(            
                'limit' => $limit
            ));   
            //$posts = Joke::orderBy('id', 'DESC')->paginate(5);
        }


        // $jokes = Joke::with(
        //     array('User'=>function($query){
        //         $query->select('id','name');
        //     })
        //     )->select('id', 'body', 'user_id')->paginate(5); 
        //return $jokes;
        
        // dd(get_class_methods($jokes));

        //$jokes = Joke::all();
        // return Response::json([
        //     'data' => $this->transformCollection($jokes)
        // ], 200);
        return Response::json($this->transformCollection($jokes), 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
    //     //
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if(! $request->body or ! $request->user_id){
            return Response::json([
                'error' => [
                    'message' => 'Please Provide Both body and user_id'
                ]
            ], 422);
        }
        $joke = Joke::create($request->all());

        return Response::json([
                'message' => 'Joke Created Succesfully',
                'data' => $this->transform($joke)
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $joke = Joke::with(
            array('User'=>function($query){
                $query->select('id','name');
            })
            )->find($id);

        if(!$joke){
            return Response::json([
                'error' => [
                    'message' => 'Joke does not exist'
                ]
            ], 404);
        }

         // get previous joke id
        $previous = Joke::where('id', '<', $joke->id)->max('id');

        // get next joke id
        $next = Joke::where('id', '>', $joke->id)->min('id');

        

        return Response::json([
            'previous_joke_id'=> $previous,
            'next_joke_id'=> $next,
            'data' => $this->transform($joke)
            // 'data' => $joke
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function edit($id)
    // {
    //     //
    // }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {    
        if(! $request->body or ! $request->user_id){
            return Response::json([
                'error' => [
                    'message' => 'Please Provide Both body and user_id'
                ]
            ], 422);
        }
        
        $joke = Joke::find($id);
        $joke->body = $request->body;
        $joke->user_id = $request->user_id;
        $joke->save(); 

        return Response::json([
                'message' => 'Joke Updated Succesfully'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Joke::destroy($id);
    }

    // private function transformCollection($jokes){
    //     return array_map([$this, 'transform'], $jokes->toArray());
    // }

    private function transformCollection($jokes){
        $jokesArray = $jokes->toArray();
        return [
            'total' => $jokesArray['total'],
            'per_page' => intval($jokesArray['per_page']),
            'current_page' => $jokesArray['current_page'],
            'last_page' => $jokesArray['last_page'],
            'next_page_url' => $jokesArray['next_page_url'],
            'prev_page_url' => $jokesArray['prev_page_url'],
            'from' => $jokesArray['from'],
            'to' =>$jokesArray['to'],
            'data' => array_map([$this, 'transform'], $jokesArray['data'])
        ];
    }

    private function transform($joke){
        return [
                'joke_id' => $joke['id'],
                'joke' => $joke['body'],
                'submitted_by' => $joke['user']['name']
        ];
    }
}
