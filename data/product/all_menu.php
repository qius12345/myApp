<?php
  /**
* 向全部菜单页面提供必需的数据，包括分类、食材
* 返回数据形如：
  {
    allMenuClassifyItems: [ ],
    allMenuFoodItems: [ ]
  }
*/
  header('Access-Control-Allow-Origin:*');
  header('Content-Type: application/json;charset=UTF-8');
  require_once("../init.php");
  @$all_type=$_REQUEST["all_type"];
  @$type=$_REQUEST["type"];
  
  $output=[];
  if($type==""){
    $type=1;
  }else{
    $type=$type+1;
  }
  if($all_type==""){
    $all_type=1;
  } 

  $sql="SELECT title FROM all_menu_type WHERE type=1";
  $result=mysqli_query($conn,$sql);
  $output["allMenuClassifyItems"]=mysqli_fetch_all($result,MYSQLI_ASSOC);

  $sql="SELECT title FROM all_menu_type WHERE type=2";
  $result=mysqli_query($conn,$sql);
  $output["allMenuFoodItems"]=mysqli_fetch_all($result,MYSQLI_ASSOC);

  $sql="SELECT detail FROM all_menu WHERE all_type='$all_type' AND type='$type'";
  $result=mysqli_query($conn,$sql);
  $output["allMenuItems"]=mysqli_fetch_all($result,MYSQLI_ASSOC);

  echo json_encode($output);

