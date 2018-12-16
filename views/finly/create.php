<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Finly */

$this->title = 'Create Finly';
$this->params['breadcrumbs'][] = ['label' => 'Finlies', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="finly-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
