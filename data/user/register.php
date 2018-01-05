<?php

header('Access-Control-Allow-Origin:*');
require_once('../init.php');
header('Content-Type: application/json;charset=UTF-8');

@$uname=$_REQUEST["uname"] or die("uname required");
@$upwd=$_REQUEST["upwd"] or die("upwd required");
@$email=$_REQUEST["email"] or die("email required");
@$phone=$_REQUEST["phone"] or die("phone required");

$sql = "INSERT INTO user(uname,upwd,email,phone) VALUES('$uname','$upwd','$email','$phone')";

$result=mysqli_query($conn,$sql);
if(!$result){
  echo('{"code":500, "msg":"注册失败"}');
}else {
  $uid = mysqli_insert_id($conn);
  echo('{"code":200, "msg":"注册成功", "uid":'.$uid.'}');
}


