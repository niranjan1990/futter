<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "finly".
 *
 * @property int $id
 * @property string $domainname
 * @property string $emails
 */
class Finly extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'finly';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['domainname', 'emails'], 'required'],
            [['emails'], 'string'],
            [['domainname'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'domainname' => 'Domainname',
            'emails' => 'Emails',
        ];
    }
}
