<?php

namespace Modules\Military\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\Military\Entities\MilitaryAreaSubmision;
use Modules\Military\Http\Requests\MilitaryAreaSubmisionRequest;

class MilitaryAreaSubmisionController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        $rows = MilitaryAreaSubmision::with(['militaryArea'])->orderBy('created_at', 'DESC')->get();
        return responseJson(1, "ok", $rows);
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        return view('military::military_submission.create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $validator = validator($request->all(), [
            'military_area_id' => 'required|exists:military_areas,id|unique:military_area_submision,military_area_id',
            'government_id' => 'required|exists:governments,id',
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }

        try {
            $status = MilitaryAreaSubmision::create($request->all());
            return responseJson(1, __('data created successfully'), "");

        }  catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show($id)
    {
        $status = MilitaryAreaSubmision::find($id);
        $status->government;
        $status->militaryArea;
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
    public function edit($id)
    {
        $status = MilitaryAreaSubmision::find($id);
        if (!$status) {
            notify()->warning( __('data not found'), "", "bottomLeft");
            return redirect()->route('military-area-submission.index');
        }
        return view('military::military_submission.edit', compact('status'));
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(Request $request, $id)
    {
        $validator = validator($request->all(), [
            'military_area_id' => 'required|exists:military_areas,id|unique:military_area_submision,military_area_id,'.$id,
            'government_id' => 'required|exists:governments,id',
        ]);

        if ($validator->fails()) {
            return responseJson(0, $validator->errors()->getMessages(), "");
        }
        try {
            $status = MilitaryAreaSubmision::find($id);
            if (!$status) {
                return responseJson(0, __('data not found'), '');
            } else {
                $status->update($request->all());
                return responseJson(1, __('data updated successfully'), $militaryArea);
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
    public function destroy($id)
    {
        $status = MilitaryAreaSubmision::find($id);
        try {
            if (!$status) {
                return responseJson(0, __('data not found'), '');
            } else {
                $status->delete();
                return responseJson(1, __('deleted successfully'), '');
            }
        } catch (\Exception $ex) {
            return responseJson(0, $ex->getMessage(), "");
        }
    }
}
