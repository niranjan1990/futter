<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "location".
 *
 * @property int $id
 * @property int $posts_id
 * @property int $user_id
 * @property string $lat
 * @property string $lon
 *
 * @property Posts $posts
 * @property User $user
 */
class Location extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'location';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['posts_id', 'user_id', 'lat', 'lon'], 'required'],
            [['posts_id', 'user_id'], 'integer'],
            [['lat', 'lon'], 'string', 'max' => 100],
            [['posts_id'], 'exist', 'skipOnError' => true, 'targetClass' => Posts::className(), 'targetAttribute' => ['posts_id' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'posts_id' => 'Posts ID',
            'user_id' => 'User ID',
            'lat' => 'Lat',
            'lon' => 'Lon',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPosts()
    {
        return $this->hasOne(Posts::className(), ['id' => 'posts_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
