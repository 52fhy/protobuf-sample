<?php 
use Sample\Model\UserList;

$json = '{"list":[{"id":1,"name":"test"}],"page":1,"limit":5}';

require_once "autoload.php";

$userList = new UserList();
$userList->mergeFromJsonString($json);
print_r($userList);
echo $userList->serializeToJsonString();