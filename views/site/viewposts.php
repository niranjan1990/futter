<?php
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ActiveForm;



$this->title = Yii::t('app', 'Viewposts');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-posts">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>View Posts</p>    

<table id="table" class="display" style="width:100%">
        <thead>
            <tr>
                <th>username</th>
                <th>tweet</th>
            </tr>
        </thead>
        <tfoot>
        <?php foreach($data as $block){?>
            <tr>
                <td><?php  print_r($block['username']); ?></td>
                <td><?php  print_r($block['tweet']); ?></td>
            </tr>
        <?php } ?>   
        </tfoot>
    </table>

    

    <code><?= __FILE__ ?></code>
</div>

