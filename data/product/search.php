<?php
/**
* 向首页提供必需的数据，包括轮播广告、首页推荐、最新上架、热销单品
* 返回数据形如：
  {
    menuListItems: [ ],
  }
*/
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');

@$kw=$_REQUEST["kw"];
$output=[];

$sql="SELECT img,title,detail FROM menu_list WHERE title LIKE %'.$kw.'%";
$result=mysqli_query($conn,$sql);
$output["searchListItems"]=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($output);