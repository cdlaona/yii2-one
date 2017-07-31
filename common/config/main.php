<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'helper' => [
            'class' => 'common\components\Helper',
        ],
        'urlManagerFrontend' => [
            'class' => 'yii\web\urlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            //'suffix' => '.html',
            'rules' => [
                'jingxuan' => 'site/index',
            ],
        ],
    ],
];
