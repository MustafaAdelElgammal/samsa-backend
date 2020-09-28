<?php

namespace Modules\Settings\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Settings\Entities\RegisterationStatus;
use Modules\Settings\Http\Requests\RegisterationStatusRequest;
use Modules\Adminsion\Entities\RegisterationStatusDocument;

class RegisterationStatusController extends Controller {

    public function __construct() {
//        $this->middleware(['permission:registeration-status_read'])->only('index');
//        $this->middleware(['permission:registeration-status_create'])->only('create');
//        $this->middleware(['permission:registeration-status_update'])->only('edit');
//        $this->middleware(['permission:registeration-status_delete'])->only('destroy');
    }

    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index() {
        $registerationStatus = null;

        // if (request()->registeration_status_id > 0)
        //     $registerationStatus = RegisterationStatus::find(request()->registeration_status_id);

        $registerationStatuses = RegisterationStatus::with(['requiredDocuments'])->OrderBy('created_at', 'desc')->get();
        return responseJson(1, "ok", $registerationStatuses);
    }

    /**
     * update required document of registeration status
     * 
     * 
     */
    public function updateRequiredDocument(RegisterationStatus $registerationStatus, Request $request) {
        try {
            // remove old
            RegisterationStatusDocument::where('registeration_status_id', $registerationStatus->id)->delete();

            // add new
            foreach ($request->required_document_check as $item) {
                RegisterationStatusDocument::create([
                    'registeration_status_id' => $registerationStatus->id,
                    'required_document_id' => $item
                ]);
            }

            notify()->success(__('process has been success'), "", "bottomLeft");
        } catch (\Exception $th) {
            notify()->error($th->getMessage(), "", "bottomLeft");
        }
        return redirect()->route('registeration-status.index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create() {
        return view('settings::registeration_status.create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request) {
        $validator = validator($request->all(), [
            'name'=>'required|unique:registeration_status,name'
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        try {
            $registerationStatus = RegisterationStatus::create($request->all());
            if ($registerationStatus) {
                return responseJson(1, __('data created successfully'), $registerationStatus);
            } else {
                notify()->error("هناك خطأ ما يرجى المحاولة فى وقت لاحق", "", "bottomLeft");
            }
        } catch (\Exception $ex) {
            return responseJson(0,  $ex->getMessage(), "");
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show($id) {
        $registerationStatus = RegisterationStatus::find($id);
        $registerationStatus->requiredDocuments;
        if (!$registerationStatus) {
            return responseJson(0, __('data not found'), '');
        }
        return responseJson(1, "ok", $registerationStatus);
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit($id) {
        $registerationStatus = RegisterationStatus::find($id);
        if (!$registerationStatus) {
            notify()->warning(__('data not found'), "", "bottomLeft");
            return redirect()->route('registeration-status.index');
        }
        return view('settings::registeration_status.edit', compact('registerationStatus'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(Request $request, $id) {
        $validator = validator($request->all(), [
            'name'=>'required|unique:registeration_status,name,'.$id
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $registerationStatus = RegisterationStatus::find($id);
            if (!$registerationStatus) {
                return responseJson(0, __('data not found'), '');
            } else {
                $registerationStatus->update($request->all());
                return responseJson(1, __('data updated successfully'), $registerationStatus);
            }
        } catch (\Exception $ex) {
            return responseJson(0, "", $ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy($id) {
        try {
            $registerationStatus = RegisterationStatus::find($id);
            if (!$registerationStatus) {
                return responseJson(0, __('data not found'), '');
            }
            $registerationStatus->delete();
            return responseJson(1, __('deleted successfully'), '');
        }catch (\Exception $ex) {
            return responseJson(0, "", $ex->getMessage());
        }
    }

}
