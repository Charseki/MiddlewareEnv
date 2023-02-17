<?php
print_r("charseki.chen@dbappsecurity.com.cn");
echo "\n\n";
print_r("--------------------- Upload ------------------");
echo "\n\n";
var_dump($_FILES);
echo "\n";
print_r("--------------------- Request -----------------");
echo "\n\n";
var_dump($_REQUEST);
echo "\n";
print_r("--------------------- Headers -----------------");
echo "\n\n";
/**
 * PHP获取http请求头
 * @return array 返回数组
 */
function getRequestHeaders() {
    $headers = array();
    foreach ($_SERVER as $key => $value) {
        if ('HTTP_' == substr($key, 0, 5)) {
            $key = substr($key, 5);
            $key = strtolower($key);
            $key = str_replace('_', ' ', $key);
            $key = ucwords($key);
            $key = str_replace(' ','-',$key);
            $headers[$key] = $value;
        }
    }

    return $headers;
}
print_r(getRequestHeaders());
?>