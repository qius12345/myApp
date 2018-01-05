<?php
/**
* 向首页提供必需的数据，包括轮播广告、首页推荐、最新上架、热销单品
* 返回数据形如：
  {
    carouselItems: [ ],
    recommendedItems: [ ],
    newArrialItems: [ ],
    topSaleItems: [ ]
  }
*/
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');

$output = [];


//1.获取轮播广告项
$sql = "SELECT cid,img,title,href FROM index_carousel";
$result = mysqli_query($conn, $sql);
$output['carouselItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);


//3.精品菜谱
$sql = "SELECT mid,img,title,menu_detail,href FROM index_menu";
$result = mysqli_query($conn, $sql);
$output['myMenuItems'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

echo json_encode($output);