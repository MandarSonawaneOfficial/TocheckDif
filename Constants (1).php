<?php

/*
 | --------------------------------------------------------------------
 | App Namespace
 | --------------------------------------------------------------------
 |
 | This defines the default Namespace that is used throughout
 | CodeIgniter to refer to the Application directory. Change
 | this constant to change the namespace that all application
 | classes should use.
 |
 | NOTE: changing this will require manually modifying the
 | existing namespaces of App\* namespaced-classes.
 */
defined('APP_NAMESPACE') || define('APP_NAMESPACE', 'App');

/*
 | --------------------------------------------------------------------------
 | Composer Path
 | --------------------------------------------------------------------------
 |
 | The path that Composer's autoload file is expected to live. By default,
 | the vendor folder is in the Root directory, but you can customize that here.
 */
defined('COMPOSER_PATH') || define('COMPOSER_PATH', ROOTPATH . 'vendor/autoload.php');

/*
 |--------------------------------------------------------------------------
 | Timing Constants
 |--------------------------------------------------------------------------
 |
 | Provide simple ways to work with the myriad of PHP functions that
 | require information to be in seconds.
 */
defined('SECOND') || define('SECOND', 1);
defined('MINUTE') || define('MINUTE', 60);
defined('HOUR')   || define('HOUR', 3600);
defined('DAY')    || define('DAY', 86400);
defined('WEEK')   || define('WEEK', 604800);
defined('MONTH')  || define('MONTH', 2592000);
defined('YEAR')   || define('YEAR', 31536000);
defined('DECADE') || define('DECADE', 315360000);

/*
 | --------------------------------------------------------------------------
 | Exit Status Codes
 | --------------------------------------------------------------------------
 |
 | Used to indicate the conditions under which the script is exit()ing.
 | While there is no universal standard for error codes, there are some
 | broad conventions.  Three such conventions are mentioned below, for
 | those who wish to make use of them.  The CodeIgniter defaults were
 | chosen for the least overlap with these conventions, while still
 | leaving room for others to be defined in future versions and user
 | applications.
 |
 | The three main conventions used for determining exit status codes
 | are as follows:
 |
 |    Standard C/C++ Library (stdlibc):
 |       http://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
 |       (This link also contains other GNU-specific conventions)
 |    BSD sysexits.h:
 |       http://www.gsp.com/cgi-bin/man.cgi?section=3&topic=sysexits
 |    Bash scripting:
 |       http://tldp.org/LDP/abs/html/exitcodes.html
 |
 */
defined('EXIT_SUCCESS')        || define('EXIT_SUCCESS', 0); // no errors
defined('EXIT_ERROR')          || define('EXIT_ERROR', 1); // generic error
defined('EXIT_CONFIG')         || define('EXIT_CONFIG', 3); // configuration error
defined('EXIT_UNKNOWN_FILE')   || define('EXIT_UNKNOWN_FILE', 4); // file not found
defined('EXIT_UNKNOWN_CLASS')  || define('EXIT_UNKNOWN_CLASS', 5); // unknown class
defined('EXIT_UNKNOWN_METHOD') || define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT')     || define('EXIT_USER_INPUT', 7); // invalid user input
defined('EXIT_DATABASE')       || define('EXIT_DATABASE', 8); // database error
defined('EXIT__AUTO_MIN')      || define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX')      || define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code

/*
 * --------------------------------------------------------------------
 * Constants
 * --------------------------------------------------------------------
*/

/*define('DB_SERVER', 'localhost');
define('DB_USER', 'accurvq6_root');
define('DB_PASS', '6%ewH=[YYpZy');
define('DB_DATABASE', 'accurvq6_tms');


//DOMAIN Paths
define('DOMAIN_URL', 'https://accurate-tf.com/');
*/

define('DB_SERVER', 'localhost');
define('DB_USER', 'pisysqvw_root');
define('DB_PASS', 'Ltf29w$n6vsY');
define('DB_DATABASE', 'pisysqvw_tms');


//DOMAIN Paths
define('DOMAIN_URL', 'https://tms.pisystindia.com/');
define('SITE_URL', DOMAIN_URL . "admin/");

//BASE Paths
define('DOMAIN_BASE_URL', $_SERVER['DOCUMENT_ROOT'] . '/');
define('BASE_URL', DOMAIN_BASE_URL . "admin/");

//Assets
define('ASSETSPATH', SITE_URL . 'public/assets/');

//Includes
define('INCLUDESPATH', BASE_URL . 'public/includes');

//Image Paths
define('IMAGE_UPLOAD_PATH', DOMAIN_BASE_URL . 'uploads/');
define('FETCH_IMAGE', DOMAIN_URL . 'uploads/');

//Video Paths
define('VIDEO_UPLOAD_PATH', DOMAIN_BASE_URL . '/uploads/');
define('FETCH_VIDEO', DOMAIN_URL . '/uploads/');

define("TBL_PREFIX", "tbl_");

//Table Variables
define("TBL_USERS", TBL_PREFIX  . "users");

define("TBL_ADMIN", TBL_PREFIX .  "admin");
define("TBL_CLIENT_COMPANIES", TBL_PREFIX .  "clientcompanies");
define("TBL_COMPONENTS", TBL_PREFIX .  "component");
define("TBL_UNIT", TBL_PREFIX .  "units");
define("TBL_ENQUIRY", TBL_PREFIX .  "enquiry");
define("TBL_ENQUIRY_DETAILS", TBL_PREFIX .  "enquiry_details");
define("TBL_LOGS", TBL_PREFIX .  "logs");
define("TBL_MACHINE", TBL_PREFIX .  "machine");
define("TBL_TOOLS_TO_OPERATION_ALLOCATION", TBL_PREFIX .  "tools_to_operation_allocations");
define("TBL_PARAMETERS_TO_TOOL_ALLOCATION", TBL_PREFIX .  "parameters_to_tool_allocations");
define("TBL_MEMBERS_TYPE", TBL_PREFIX .  "members_type");
define("TBL_OPERATIONS", TBL_PREFIX .  "operations");
define("TBL_OPERATIONS_TO_MACHINE_ALLOCATION", TBL_PREFIX .  "operations_to_machine_allocations");
define("TBL_PROJECTS", TBL_PREFIX .  "project");
define("TBL_COMPANYS_TO_PROJECT_ALLOCATION", TBL_PREFIX .  "companys_to_project_allocations");
define("TBL_UNITS_TO_PARAMETER_ALLOCATION", TBL_PREFIX .  "units_to_parameter_allocations");
define('TBL_COMPANY_TO_MEMBERS_ALLOCATION', TBL_PREFIX . 'companys_to_member_allocations');
define("TBL_MEMBERS", TBL_PREFIX .  "members");
define("TBL_TASKS", TBL_PREFIX .  "tasks");
define("TBL_TOOLS", TBL_PREFIX .  "tools");
define("TBL_VENDOR_COMPANIES", TBL_PREFIX .  "vendorcompanies");
define("TBL_EMAIL_PROMOTION", TBL_PREFIX .  "email_promotion");
define("TBL_EmAIL_PROMOTION_COMPANY", TBL_PREFIX .  "email_promotion_company");
define("TBL_SHIFTS", TBL_PREFIX .  "shifts");
define("TBL_PARAMETERS", TBL_PREFIX .  "parameters");
define("TBL_MASTER_SETTINGS", TBL_PREFIX .  "master_settings");
define("TBL_INVENTORY", TBL_PREFIX .  "inventory");
define("TBL_SHIFT_DETAILS", TBL_PREFIX .  "shift_details");
define("TBL_TASKS_ATTACHMENT", TBL_PREFIX .  "tasks_attachment");
define("TBL_ORDER", TBL_PREFIX .  "order");
define("TBL_ORDER_DETAILS", TBL_PREFIX .  "order_details");
define('TBL_TOOLS_TO_COMPANY_ALLOCATION', TBL_PREFIX . 'tools_to_company_allocations');
define("TBL_CONTACT_US", TBL_PREFIX .  "contact_us");
define("TBL_CPC_THRESHOLD", TBL_PREFIX .  "cpc_threshold");
define("TBL_LEAD_TIME", TBL_PREFIX .  "lead_time");
define("TBL_CLIENT_ORDERS", TBL_PREFIX .  "client_orders");
define("TBL_MONTHLY_ENQUIRY", TBL_PREFIX .  "monthly_enquiry");
define("TBL_MONTHLY_ENQUIRY_TOOL_INVENTORY", TBL_PREFIX .  "monthly_enquiry_tool_inventory");
define("TBL_LOTWISE_INVENTORY", TBL_PREFIX . "lotwise_inventory");


define('API_URL', SITE_URL . "api/");


//Paths
define('INDEX_PATH', SITE_URL . 'index');
define('LOGIN_PATH', SITE_URL . 'login');
define('DASHBOARD_PATH', SITE_URL . 'dashboard');
define('SUBADMIN_PATH', SITE_URL . 'subadmin');
define('CLIENT_COMPANIES_PATH', SITE_URL . 'clientcompanies');
define('VENDOR_COMPANIES_PATH', SITE_URL . 'vendorcompanies');
define('ADMIN_PATH', SITE_URL . 'admins');
define('NOTIFICATIONS_PATH', SITE_URL . 'notification');
define('SITE_ENGINEER_PATH', SITE_URL . 'siteengineer');
define('PROCUREMENT_MEMBER_PATH', SITE_URL . 'procurementmember');
define('CONTACTUS_PATH', SITE_URL . 'Contact');
define('COMPONENTS_PATH', SITE_URL . 'component');
define('UNIT_PATH', SITE_URL . 'units');
define('MACHINE_PATH', SITE_URL . 'machine');
define('OPERATION_PATH', SITE_URL . 'operations');
define('PROJECT_PATH', SITE_URL . 'project');
define('TASKS_PATH', SITE_URL . 'tasks');
define('TOOL_PATH', SITE_URL . 'tools');
define('PARAMETERS_PATH', SITE_URL . 'parameters');
define('PROMOTION_PATH', SITE_URL . 'promotion');
define('SHIFT_PATH', SITE_URL . 'shift');
define('ENQUIRY_PATH', SITE_URL . 'enquiry');
define('MASTER_PATH', SITE_URL . 'master');
define('INVENTORY_PATH', SITE_URL . 'inventory');
define('LOGS_PATH', SITE_URL . 'logs');
define('CPC_PATH', SITE_URL . 'Cpc');


//Log Constants

define('ADMIN',  1);
define('SITE_ENGINEER',  2);
define('PROCUREMENT_MEMBER',  3);
define('USER',  4);

//Status Constants

define('NOTALLOCATED',  1);
define('ALLOCATED',  2);
define('PENDING',  3);
define('INPROGRESS',  4);
define('COMPLETED',  5);
define('EXPIRED',  6);

//Company constants

define('SUBADMIN',  1);
define('CLIENTCOMPANY',  2);
define('VENDORCOMPANY',  3);