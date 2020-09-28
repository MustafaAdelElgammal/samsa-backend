<?php

namespace Modules\Military\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Military\Entities\MilitaryStatus;
use Modules\Military\Http\Requests\MilitaryStatusRequest;

class MilitaryStatusController extends Controller {

    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index() {
        $militaryStatus = MilitaryStatus::OrderBy('created_at', 'desc')->get();
        return responseJson(1, "ok", $militaryStatus);
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create() {
        return view('military::military_status.create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request) {
        $validator = validator($request->all(), [
            "name" => "required|unique:military_status,name",
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $status = MilitaryStatus::create($request->all());
            return responseJson(1, __('data created successfully'), $status);

        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show($id) {
        $status = MilitaryStatus::find($id);
        if (!$status) {
            return responseJson(0, __('data not found'), '');
        }
        return responseJson(1, "ok", $status);
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit($id) {
        $militaryStatus = MilitaryStatus::find($id);
        if (!$militaryStatus) {
            notify()->warning(__('data not found'), "", "bottomLeft");
            return redirect()->route('military-status.index');
        }
        return view('military::military_status.edit', compact('militaryStatus'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(Request $request, $id) {
        $validator = validator($request->all(), [
            "name" => "required|unique:military_status,name,".$id,
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $militaryStatus = MilitaryStatus::find($id);

            if (!$militaryStatus) {
                return responseJson(0, __('data not found'), '');
            } else {

                $militaryStatus->update($request->all());
                return responseJson(1, __('data updated successfully'), $militaryStatus);
            }
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy($id) {
        try {
            $militaryStatus = MilitaryStatus::find($id);

            if (!$militaryStatus) {
                return responseJson(0, __('data not found'), '');
            }
            $countApplications = $militaryStatus->applications->count();
            $countStudents = $militaryStatus->students->count();
            if($countApplications > 0 && $countStudents > 0)
            return responseJson(0, __('this item can not be deleted'), $militaryStatus->fresh());

            $militaryStatus->delete();
            return responseJson(1, __('deleted successfully'), '');

        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");
        }
    }

}
