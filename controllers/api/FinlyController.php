<?php
namespace app\controllers\api;
use Yii;
use app\models\Finly;
use app\models\FinlySearch;

use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

class FinlyController extends Controller
{
    public function beforeAction($action) {
    $this->enableCsrfValidation = false;
    return parent::beforeAction($action);
    }
	public function actionGetFinly()
    {
        \Yii::$app->response->format = \yii\web\Response:: FORMAT_JSON;
        $finly  = Finly::find()->all();
        if(count($finly) > 0 )
        {
        return array('status' => true, 'data'=> $finly);
        }
        else
        {
        return array('status'=>false,'data'=> 'No Data');
        }
    }
    public function actionCreateFinly(){
        \Yii::$app->response->format = \yii\web\Response:: FORMAT_JSON;
        
        $finly = new Finly();
        $finly->scenario = Finly:: SCENARIO_CREATE;
        
        $finly->attributes = \yii::$app->request->post();
        $getvariables=Yii::$app->getRequest()->getBodyParams();
        $domainname=$getvariables['domainname'];
        $emails=$getvariables['emails'];

        $present=Finly::find()->where(['domainname'=>$domainname,'emails'=>$emails])->asArray()->one();

        if($finly->validate() && $present == NULL) {
            $finly->save();
            return array('status' => true, 'data'=> 'Finly Data Recorded');
        }else
        {
            return array('status'=>false,'data'=>'Duplicate Data');
        }
    }
}