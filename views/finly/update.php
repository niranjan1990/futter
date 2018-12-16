<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Finly */

$this->title = 'Update Finly: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Finlies', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="finly-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
