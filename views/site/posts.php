<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ActiveForm;



$this->title = Yii::t('app', 'posts');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-posts">
    <h1><?= Html::encode($this->title) ?></h1>

<?php if($postflag == 0){ ?>

<p>PLease Login</p>  
<?php }else{?>
    <p>Create Posts</p>    

<?php $form = ActiveForm::begin(); ?>


<?php if($hide == 1){ ?>
<?= $form->field($locationModel, 'lat')->textInput(['maxlength' => true,'disabled' => true,'value' => $lat]) ?>

<?= $form->field($locationModel, 'lon')->textInput(['maxlength' => true,'disabled' => true,'value' => $lon]) ?>

<?php }else{ ?>
<p><div class="btn btn-success" onclick="geoFindMe()">Show my location</div></p>

<?= $form->field($locationModel, 'lat')->textInput(['maxlength' => true]) ?>

<?= $form->field($locationModel, 'lon')->textInput(['maxlength' => true]) ?>


<?php } ?>
<?= $form->field($postsModel, 'post')->textInput(['maxlength' => true]) ?>


<div class="form-group">
    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
</div>

<?php ActiveForm::end(); ?>

<?php } ?>  

</div>

