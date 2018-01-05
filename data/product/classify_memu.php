<?php
/**
* 向分类页面提供必需的数据，包括热门分类、菜系、热门食材及场合
* 返回数据形如：
  {
    hotClassifyItems: [ ],
    styleOfCookingItems: [ ],
    foodMaterialItems: [ ],
    occasionItems: [ ]
  }
*/
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');

$output = [];

//1.获取热门分类
$sql="SELECT classify_mid,img,classify_title,classify_detail,href,classify_floor FROM classify_menu WHERE classify_floor=1";
$result=mysqli_query($conn,$sql);
$output['hotClassifyItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

//2.获取菜系
$sql="SELECT classify_mid,img,classify_title,classify_detail,href,classify_floor FROM classify_menu WHERE classify_floor=2";
$result=mysqli_query($conn,$sql);
$output['styleOfCookingItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

//3.获取热门食材
$sql="SELECT classify_mid,img,classify_title,classify_detail,href,classify_floor FROM classify_menu WHERE classify_floor=3";
$result=mysqli_query($conn,$sql);
$output['foodMaterialItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

//4.获取场合
$sql="SELECT classify_mid,img,classify_title,classify_detail,href,classify_floor FROM classify_menu WHERE classify_floor=4";
$result=mysqli_query($conn,$sql);
$output['occasionItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

echo json_encode($output);