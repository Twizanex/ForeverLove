<?php
// Don't start a new session if an old one is running?
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

//// GLOBALS for localhost
//$GLOBALS['config'] = [
//    'mysql' => [
//        'host' => '127.0.0.1',
//        'username' => 'root',
//        'password' => '',
//        'db' => 'group13db'
//    ]
//];

// GLOBALS for csis server
$GLOBALS['config'] = [
    'mysql' => [
        'host' => '193.1.101.7:3307',
        'username' => 'group13',
        'password' => 'mb4P8WhVl',
        'db' => 'group13db',
    ]
];

// the bootstrap is not necessary if you just register a reasonable autoloader for modules in your application, something like this:
function __autoload_namespaced_module($class) {
    $path = str_replace('\\', '/', $class);

    if (file_exists($file = (__DIR__ . $path . '.php'))) {
        require_once($file);
    }
}

if((isset($_SESSION['permissions']) && $_SESSION['permissions'] == 'admin') || (isset($GLOBALS['adminLogin']) && $GLOBALS['adminLogin'])){
      
      spl_autoload_register();
      spl_autoload_register('__autoload_namespaced_module');
}
else{
      spl_autoload_register();
      spl_autoload_register('__autoload_namespaced_module');
}
?>
