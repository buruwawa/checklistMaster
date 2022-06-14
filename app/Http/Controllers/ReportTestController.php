<?php

namespace App\Http\Controllers;

use App\Models\reportTest;
use App\Http\Requests\StorereportTestRequest;
use App\Http\Requests\UpdatereportTestRequest;

use JasperPHP\JasperPHP as JasperPHP;
use Illuminate\Http\Request;

// use PHPJasperXML;
// use Response;
// include_once(app_path().'/jrf/PHPJasperXML.inc.php');
// include_once(app_path().'/jrf/sample/setting.php');

// use Response;
include_once(app_path().'/jrf/PHPJasperXML.inc.php');
// include_once(app_path().'/jrf/sample/setting.php');
// include_once ('setting.php');
// include_once(app_path().'/jrf/sample/setting.php');
use PHPJasperXML;

class ReportTestController extends Controller
{

     public function generateReport() {
        //JasperPHP::compile(base_path('/vendor/cossou/jasperphp/examples/hello_world.jrxml'))->execute();
        $jasper = new JasperPHP;
        $filename = 'gau';
        $output = base_path('//public/reports/' . $filename);
        $jasper->process(
                base_path('/vendor/cossou/jasperphp/examples/LaravelIreporTest.jasper'), 
                $output,
                array("pdf"), 
                array("test" => "Tax Invoice"), 
                array(
                        'driver' => 'mysql',
                        'username' => 'username',
                        'password' => 'password',
                        'host' => 'localhost',
                        'database' => 'database name',
                        'port' => '3306',
                      )
        )->execute();
    }


 public function viewreport($x,$y)
    {
//dd('ddd');
      // $PHPJasperXML = new PHPJasperXML();
      // // $PHPJasperXML->load_xml_file(app_path()."/includes/reports/".$reporte.".jrxml");
      //  $PHPJasperXML->load_xml_file(app_path()."/reports/location.jrxml");
      //  //dd('ddd');
      // $PHPJasperXML->transferDBtoArray();
      // //Clean the end of the buffer before outputting the PDF
      // ob_end_clean();
      // //page output method I:standard output  D:Download file
      // return Response::make($PHPJasperXML->outpage("I"));

    $server="localhost";
$db="demodb";
$user="root";
$pass="";
$version="1.1";

$pgport=3306; //only for postgresql    

        $PHPJasperXML = new PHPJasperXML();
// $PHPJasperXML->load_xml_file("report2.jrxml");
$PHPJasperXML->load_xml_file(app_path()."/reports/location.jrxml");
$PHPJasperXML->transferDBtoArray($server,$user,$pass,$db);
// ob_end_clean();
//$PHPJasperXML->outpage("I");    //page output method I:standard output  D:Download file
return Response::make($PHPJasperXML->outpage("I"));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function jrf()
    {
     //   dd('dd');
        /* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
// include_once("../PHPJasperXMLSubReport.inc.php");
// include_once("../PHPJasperXML.inc.php");
        // include_once(app_path().'/jrf/PHPJasperXML.inc.php');
// include_once("../PHPJasperXML.inc.php");
include_once(app_path().'/jrf/sample/setting.php');

$PHPJasperXML = new PHPJasperXML();
// $PHPJasperXML->load_xml_file("report2.jrxml");
$PHPJasperXML->load_xml_file(app_path().'/jrf/sample/location.jrxml');
$PHPJasperXML->transferDBtoArray($server,$user,$pass,$db);
$PHPJasperXML->outpage("I");    //page output method I:standard output  D:Download file
    }




      public function index()
    {
        //dd('ddd');
         $jasper = new JasperPHP;
        $filename = 'location';
        // $output = base_path('../reports/' . $filename);
        $output=app_path()."/reports";
        //dd('ds');
        $jasper->process(
                base_path('../vendor/geekcom/jasperphp-laravel/examples/hello_world.jrxml'), 
                $output,
                array("pdf"), 
                array("test" => "Tax Invoice"), 
                array(
                        'driver' => 'mysql',
                        'username' => 'root',
                        'password' => '',
                        'host' => 'localhost',
                        'database' => 'demodb',
                        'port' => '3306',
                      )
        )->execute();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorereportTestRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorereportTestRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\reportTest  $reportTest
     * @return \Illuminate\Http\Response
     */
    public function show(reportTest $reportTest,request $request)
    {
        //
       //dd('dd');

//dd(request('userid'));
        /* 


 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
// include_once("../PHPJasperXMLSubReport.inc.php");
// include_once("../PHPJasperXML.inc.php");
        // include_once(app_path().'/jrf/PHPJasperXML.inc.php');
// include_once("../PHPJasperXML.inc.php");

       
include_once(app_path().'/jrf/sample/setting.php');

$PHPJasperXML = new PHPJasperXML();
// $PHPJasperXML->load_xml_file("report2.jrxml");

if(request('userid'))
{
 $v=request('userid'); 
 $PHPJasperXML->arrayParameter=array("loc_id"=>$v);
 $PHPJasperXML->load_xml_file(app_path().'/jrf/sample/location_params.jrxml');  
}
else
{
   $PHPJasperXML->load_xml_file(app_path().'/jrf/sample/location_noparams.jrxml');
}
$PHPJasperXML->transferDBtoArray($server,$user,$pass,$db);
$PHPJasperXML->outpage("I");    //page output method I:standard output  D:Download file
}

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\reportTest  $reportTest
     * @return \Illuminate\Http\Response
     */
    public function edit(reportTest $reportTest)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatereportTestRequest  $request
     * @param  \App\Models\reportTest  $reportTest
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatereportTestRequest $request, reportTest $reportTest)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\reportTest  $reportTest
     * @return \Illuminate\Http\Response
     */
    public function destroy(reportTest $reportTest)
    {
        //
    }
}
