-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 01:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daylap9a_tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(500) DEFAULT NULL,
  `admin_email` varchar(500) NOT NULL,
  `admin_contact` varchar(500) NOT NULL,
  `admin_password` varchar(500) NOT NULL,
  `admin_address` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clientcompanies`
--

CREATE TABLE `tbl_clientcompanies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(500) DEFAULT NULL,
  `client_email` varchar(500) NOT NULL,
  `client_contact` varchar(500) NOT NULL,
  `client_password` varchar(500) NOT NULL,
  `client_address` varchar(500) NOT NULL,
  `client_GST` varchar(500) NOT NULL,
  `client_personofcontact` varchar(500) NOT NULL,
  `client_department` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_orders`
--

CREATE TABLE `tbl_client_orders` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL,
  `tool_id` int(11) NOT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `actual_qty` int(11) NOT NULL,
  `minlevel` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `maxlevel` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `reorderlevel` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `qtytoorder` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lot_name` varchar(500) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companys_to_member_allocations`
--

CREATE TABLE `tbl_companys_to_member_allocations` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companys_to_project_allocations`
--

CREATE TABLE `tbl_companys_to_project_allocations` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_component`
--

CREATE TABLE `tbl_component` (
  `id` int(11) NOT NULL,
  `component_name` varchar(500) NOT NULL,
  `component_image` varchar(500) NOT NULL,
  `component_code` varchar(500) NOT NULL,
  `component_material` varchar(500) NOT NULL,
  `component_description` varchar(256) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_us`
--

CREATE TABLE `tbl_contact_us` (
  `id` int(11) NOT NULL,
  `contactus_name` varchar(500) NOT NULL DEFAULT '',
  `contactus_email` varchar(500) NOT NULL DEFAULT '',
  `contactus_phone` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cpc_threshold`
--

CREATE TABLE `tbl_cpc_threshold` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cpc_percent` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_promotion`
--

CREATE TABLE `tbl_email_promotion` (
  `id` int(11) NOT NULL,
  `email_subject` varchar(5000) NOT NULL,
  `email_body` varchar(5000) NOT NULL,
  `email_attachment` varchar(5000) NOT NULL,
  `is_attachment` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_promotion_company`
--

CREATE TABLE `tbl_email_promotion_company` (
  `id` int(11) NOT NULL,
  `company_id` varchar(500) NOT NULL,
  `email_id` varchar(500) NOT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `member_id` int(11) NOT NULL DEFAULT 0,
  `component_id` int(11) NOT NULL DEFAULT 0,
  `tools_quantity` varchar(500) NOT NULL,
  `tools_budget` varchar(500) NOT NULL,
  `no_of_components` varchar(500) NOT NULL,
  `actual_no_of_components` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry_details`
--

CREATE TABLE `tbl_enquiry_details` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `member_id` int(11) NOT NULL DEFAULT 0,
  `required_quantity` varchar(500) NOT NULL,
  `required_price` varchar(500) NOT NULL,
  `enquiry_tool_description` varchar(500) NOT NULL,
  `enquiry_depth_of_cut` varchar(500) NOT NULL,
  `enquiry_tool_diameter` varchar(500) NOT NULL,
  `enquiry_tool_rpm` varchar(500) NOT NULL,
  `enquiry_tool_vc` varchar(500) NOT NULL,
  `enquiry_tool_feed` varchar(500) NOT NULL,
  `enquiry_no_of_tooth` varchar(500) NOT NULL,
  `enquiry_total_feed_rev` varchar(500) NOT NULL,
  `enquiry_feed_in_mm_min` varchar(500) NOT NULL,
  `enquiry_cut_length_in_mm` varchar(500) NOT NULL,
  `enquiry_time_in_min` varchar(500) NOT NULL,
  `enquiry_life_per_corner` varchar(500) NOT NULL,
  `enquiry_price` varchar(500) NOT NULL,
  `enquiry_no_of_corner` varchar(500) NOT NULL,
  `enquiry_no_reservice` varchar(500) NOT NULL,
  `service_price` varchar(500) NOT NULL,
  `enquiry_total_life` varchar(500) NOT NULL,
  `enquiry_cpc` varchar(500) NOT NULL,
  `enquiry_depreciation_factor` varchar(500) NOT NULL,
  `enquiry_reservice_tool_life` varchar(500) NOT NULL,
  `proposed_tool_description` varchar(500) NOT NULL,
  `proposed_depth_of_cut` varchar(500) NOT NULL,
  `proposed_tool_diameter` varchar(500) NOT NULL,
  `proposed_tool_rpm` varchar(500) NOT NULL,
  `proposed_tool_vc` varchar(500) NOT NULL,
  `proposed_tool_feed` varchar(500) NOT NULL,
  `proposed_no_of_tooth` varchar(500) NOT NULL,
  `proposed_total_feed_rev` varchar(500) NOT NULL,
  `proposed_feed_in_mm_min` varchar(500) NOT NULL,
  `proposed_cut_length_in_mm` varchar(500) NOT NULL,
  `proposed_time_in_min` varchar(500) NOT NULL,
  `proposed_life_per_corner` varchar(500) NOT NULL,
  `proposed_no_of_corner` varchar(500) NOT NULL,
  `proposed_no_of_reservice` varchar(500) NOT NULL,
  `proposed_service_price` varchar(500) NOT NULL,
  `proposed_price` varchar(500) NOT NULL,
  `proposed_total_life` varchar(500) NOT NULL,
  `proposed_cpc` varchar(500) NOT NULL,
  `proposed_depreciation_factor` varchar(500) NOT NULL,
  `proposed_reservice_tool_life` varchar(500) NOT NULL,
  `saving_cuttime` varchar(500) NOT NULL,
  `saving_cuttimepercent` varchar(500) NOT NULL,
  `saving_percent` varchar(500) NOT NULL,
  `saving_percentvalue` varchar(500) NOT NULL,
  `enquiry_feedback` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry_member_order_details`
--

CREATE TABLE `tbl_enquiry_member_order_details` (
  `id` int(11) NOT NULL,
  `enquiry_details_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `required_tool` int(100) NOT NULL,
  `fos` int(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry_status_remark`
--

CREATE TABLE `tbl_enquiry_status_remark` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `status_remark` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory`
--

CREATE TABLE `tbl_inventory` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL DEFAULT 0,
  `tool_quantity` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `tool_comment` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lead_time`
--

CREATE TABLE `tbl_lead_time` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `component_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `fos` varchar(500) DEFAULT NULL,
  `monthly_schedule` varchar(500) DEFAULT NULL,
  `tools_count` varchar(500) DEFAULT NULL,
  `appConsumption` varchar(500) NOT NULL DEFAULT '',
  `lead_time` varchar(500) NOT NULL DEFAULT '',
  `qtytosend` varchar(500) NOT NULL,
  `leadtimeFOS` varchar(500) NOT NULL DEFAULT '',
  `minlevel` varchar(500) NOT NULL DEFAULT '',
  `templevel` varchar(500) NOT NULL DEFAULT '0',
  `maxlevel` varchar(500) NOT NULL DEFAULT '',
  `reorderlevel` varchar(500) NOT NULL DEFAULT '',
  `qtytoorder` varchar(500) NOT NULL DEFAULT '',
  `deliverydate` datetime NOT NULL,
  `orderDate` datetime NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `of_id` int(10) UNSIGNED NOT NULL COMMENT 'store id of user',
  `log_of` varchar(500) NOT NULL COMMENT 'store type of user',
  `action` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lotwise_inventory`
--

CREATE TABLE `tbl_lotwise_inventory` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `enquiry_id` int(11) NOT NULL DEFAULT 0,
  `lot_name` varchar(500) NOT NULL DEFAULT '',
  `lot_type` varchar(500) NOT NULL DEFAULT '',
  `lot_quantity` varchar(500) NOT NULL DEFAULT '',
  `client_lot` varchar(500) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

CREATE TABLE `tbl_machine` (
  `id` int(11) NOT NULL,
  `machine_no` varchar(500) NOT NULL,
  `machine_name` varchar(500) NOT NULL,
  `machine_image` varchar(500) NOT NULL,
  `machine_description` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_settings`
--

CREATE TABLE `tbl_master_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(500) DEFAULT NULL,
  `project_logo` varchar(500) NOT NULL,
  `gstpercent` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pincode` varchar(500) NOT NULL,
  `telephone` varchar(500) NOT NULL,
  `gstin` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_members`
--

CREATE TABLE `tbl_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` tinyint(3) UNSIGNED NOT NULL,
  `member_name` varchar(500) DEFAULT NULL,
  `member_email` varchar(500) NOT NULL,
  `member_contact` varchar(500) NOT NULL,
  `member_password` varchar(500) NOT NULL,
  `member_address` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_members_type`
--

CREATE TABLE `tbl_members_type` (
  `id` int(11) NOT NULL,
  `member_name` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monthly_enquiry`
--

CREATE TABLE `tbl_monthly_enquiry` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) DEFAULT NULL,
  `components` varchar(500) DEFAULT NULL,
  `total_components` varchar(500) DEFAULT NULL,
  `total_tools_quantity` varchar(500) DEFAULT NULL,
  `total_tools_price` varchar(500) DEFAULT NULL,
  `month` varchar(500) NOT NULL,
  `start_date` varchar(500) NOT NULL,
  `end_date` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monthly_enquiry_tool_inventory`
--

CREATE TABLE `tbl_monthly_enquiry_tool_inventory` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) DEFAULT NULL,
  `tool_id` varchar(500) DEFAULT NULL,
  `operation_id` varchar(500) NOT NULL,
  `month` varchar(500) NOT NULL,
  `components` varchar(500) NOT NULL,
  `proposed_quantity` varchar(500) NOT NULL,
  `proposed_price` varchar(500) NOT NULL,
  `total_tools_quantity` varchar(500) DEFAULT NULL,
  `total_tools_price` varchar(500) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_operations`
--

CREATE TABLE `tbl_operations` (
  `id` int(11) NOT NULL,
  `operation_name` varchar(500) NOT NULL,
  `component_id` varchar(500) DEFAULT NULL,
  `operation_image` varchar(500) NOT NULL,
  `operation_description` varchar(500) NOT NULL,
  `operation_code` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_operations_to_machine_allocations`
--

CREATE TABLE `tbl_operations_to_machine_allocations` (
  `id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_operation_wise_shift_details`
--

CREATE TABLE `tbl_operation_wise_shift_details` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `machine_id` int(11) DEFAULT 0,
  `operation_id` int(11) DEFAULT NULL,
  `tool_unique_code` varchar(500) DEFAULT NULL,
  `manufactured_components` varchar(500) DEFAULT NULL,
  `rpm` varchar(500) DEFAULT NULL,
  `feed` varchar(500) DEFAULT NULL,
  `depth_of_cut` varchar(500) DEFAULT NULL,
  `operator` varchar(500) DEFAULT NULL,
  `tool_change_reason_comment` varchar(500) NOT NULL,
  `shift_date` varchar(500) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `order_description` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `tool_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tool_id`)),
  `operation_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `required_tools` varchar(500) NOT NULL,
  `fos` int(100) NOT NULL,
  `received_tools` int(11) NOT NULL,
  `instock_added` int(11) NOT NULL,
  `order_comment` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parameters`
--

CREATE TABLE `tbl_parameters` (
  `id` int(11) NOT NULL,
  `parameter_name` varchar(500) NOT NULL,
  `parameter_description` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parameters_to_tool_allocations`
--

CREATE TABLE `tbl_parameters_to_tool_allocations` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `parameter_id` int(11) NOT NULL,
  `parameter_value` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_po_invoice_details`
--

CREATE TABLE `tbl_po_invoice_details` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `enquiry_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_details_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL DEFAULT 0,
  `particulars` varchar(500) DEFAULT NULL,
  `tool_unique_codes` varchar(500) NOT NULL,
  `quantity` int(50) DEFAULT NULL,
  `rate` varchar(500) DEFAULT NULL,
  `discount` varchar(500) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `del_date` varchar(500) DEFAULT NULL,
  `jurisdiction` varchar(500) DEFAULT NULL,
  `p_o_no` varchar(500) DEFAULT NULL,
  `Date` varchar(500) DEFAULT NULL,
  `gst` varchar(500) DEFAULT NULL,
  `p_f` varchar(500) DEFAULT NULL,
  `destination` varchar(500) DEFAULT NULL,
  `delivery` varchar(500) DEFAULT NULL,
  `transporter` varchar(500) DEFAULT NULL,
  `payment` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `freight` varchar(500) DEFAULT NULL,
  `insurance` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(500) NOT NULL,
  `project_code` varchar(500) NOT NULL,
  `project_description` varchar(500) NOT NULL,
  `project_start_date` date NOT NULL,
  `project_end_date` date NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservice_tool_details`
--

CREATE TABLE `tbl_reservice_tool_details` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL DEFAULT 0,
  `tool_unique_code` varchar(500) NOT NULL,
  `reservice_count` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shifts`
--

CREATE TABLE `tbl_shifts` (
  `id` int(11) NOT NULL,
  `shift_name` varchar(500) NOT NULL DEFAULT '',
  `start_time` varchar(500) NOT NULL DEFAULT '',
  `end_time` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shift_details`
--

CREATE TABLE `tbl_shift_details` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL DEFAULT 0,
  `machine_id` int(11) NOT NULL DEFAULT 0,
  `shift_id` int(11) NOT NULL DEFAULT 0,
  `operation_id` int(11) NOT NULL DEFAULT 0,
  `tool_id` int(11) NOT NULL DEFAULT 0,
  `tool_description` varchar(500) NOT NULL DEFAULT '0',
  `rpm` varchar(500) NOT NULL DEFAULT '0',
  `feed` varchar(500) NOT NULL DEFAULT '0',
  `depth_of_cut` varchar(500) NOT NULL DEFAULT '0',
  `operator` varchar(500) NOT NULL,
  `desired_life` varchar(500) NOT NULL DEFAULT '0',
  `actual_life` varchar(500) NOT NULL DEFAULT '0',
  `difference_in_life` varchar(500) NOT NULL DEFAULT '0',
  `tool_flag` varchar(500) NOT NULL,
  `manufactured_components` varchar(500) NOT NULL,
  `tool_reserviced` varchar(500) NOT NULL,
  `reservice_count` varchar(500) NOT NULL,
  `tool_changed_reason` varchar(500) NOT NULL,
  `comments` varchar(500) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks`
--

CREATE TABLE `tbl_tasks` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_type` int(11) NOT NULL,
  `company_type` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `member_reply` varchar(500) NOT NULL DEFAULT '',
  `member_attachment` varchar(500) NOT NULL,
  `task_title` varchar(500) NOT NULL,
  `task_description` varchar(500) NOT NULL,
  `task_attachment` varchar(500) NOT NULL,
  `task_start_date` date NOT NULL,
  `task_end_date` date NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks_attachment`
--

CREATE TABLE `tbl_tasks_attachment` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `task_reply` varchar(500) NOT NULL DEFAULT '',
  `task_attachment` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_order`
--

CREATE TABLE `tbl_temp_order` (
  `id` int(11) NOT NULL,
  `enquiry_details_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `required_tools` int(255) NOT NULL,
  `fos` int(255) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools`
--

CREATE TABLE `tbl_tools` (
  `id` int(11) NOT NULL,
  `is_reservice` varchar(500) NOT NULL,
  `tool_name` varchar(500) NOT NULL DEFAULT '0',
  `tool_no` varchar(500) NOT NULL,
  `tool_make` varchar(500) NOT NULL,
  `tool_image` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `enquiry_tool_description` varchar(500) NOT NULL,
  `enquiry_depth_of_cut` varchar(500) NOT NULL,
  `enquiry_tool_diameter` varchar(500) NOT NULL,
  `enquiry_tool_rpm` varchar(500) NOT NULL,
  `enquiry_tool_vc` varchar(500) NOT NULL,
  `enquiry_tool_feed` varchar(500) NOT NULL,
  `enquiry_no_of_tooth` varchar(500) NOT NULL,
  `enquiry_total_feed_rev` varchar(500) NOT NULL,
  `enquiry_feed_in_mm_min` varchar(500) NOT NULL,
  `enquiry_cut_length_in_mm` varchar(500) NOT NULL,
  `enquiry_time_in_min` varchar(500) NOT NULL,
  `enquiry_life_per_corner` varchar(500) NOT NULL,
  `enquiry_price` varchar(500) NOT NULL,
  `enquiry_no_of_corner` varchar(500) NOT NULL,
  `enquiry_no_reservice` varchar(500) NOT NULL,
  `service_price` varchar(500) NOT NULL,
  `enquiry_total_life` varchar(500) NOT NULL,
  `enquiry_cpc` varchar(500) NOT NULL,
  `enquiry_depreciation_factor` varchar(500) NOT NULL,
  `enquiry_reservice_tool_life` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools_inward`
--

CREATE TABLE `tbl_tools_inward` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `enquiry_details_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_details_id` int(11) NOT NULL,
  `unique_codes` longtext NOT NULL,
  `received_quantity` int(255) NOT NULL,
  `received_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools_to_company_allocations`
--

CREATE TABLE `tbl_tools_to_company_allocations` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `price` varchar(500) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools_to_operation_allocations`
--

CREATE TABLE `tbl_tools_to_operation_allocations` (
  `id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tool_unique_codes`
--

CREATE TABLE `tbl_tool_unique_codes` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) DEFAULT NULL,
  `order_details_id` int(11) NOT NULL,
  `tool_id` int(11) DEFAULT NULL,
  `machine_id` int(11) NOT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `tool_unique_code` varchar(500) DEFAULT NULL,
  `quantity` varchar(500) NOT NULL,
  `actual_life` varchar(500) NOT NULL,
  `actual_cpc` varchar(500) NOT NULL,
  `reservice_count` varchar(500) NOT NULL,
  `tool_change_reason` varchar(500) NOT NULL,
  `reservice_flag` varchar(500) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(500) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units_to_parameter_allocations`
--

CREATE TABLE `tbl_units_to_parameter_allocations` (
  `id` int(11) NOT NULL,
  `parameter_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendorcompanies`
--

CREATE TABLE `tbl_vendorcompanies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_name` varchar(500) DEFAULT NULL,
  `vendor_email` varchar(500) NOT NULL,
  `vendor_contact` varchar(500) NOT NULL,
  `vendor_password` varchar(500) NOT NULL,
  `vendor_address` varchar(500) NOT NULL,
  `vendor_GST` varchar(500) NOT NULL,
  `vendor_personofcontact` varchar(500) NOT NULL,
  `vendor_department` varchar(500) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_clientcompanies`
--
ALTER TABLE `tbl_clientcompanies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_client_orders`
--
ALTER TABLE `tbl_client_orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_companys_to_member_allocations`
--
ALTER TABLE `tbl_companys_to_member_allocations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_companys_to_project_allocations`
--
ALTER TABLE `tbl_companys_to_project_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_component`
--
ALTER TABLE `tbl_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_cpc_threshold`
--
ALTER TABLE `tbl_cpc_threshold`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_email_promotion`
--
ALTER TABLE `tbl_email_promotion`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_email_promotion_company`
--
ALTER TABLE `tbl_email_promotion_company`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_enquiry_details`
--
ALTER TABLE `tbl_enquiry_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiry_member_order_details`
--
ALTER TABLE `tbl_enquiry_member_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiry_status_remark`
--
ALTER TABLE `tbl_enquiry_status_remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory`
--
ALTER TABLE `tbl_inventory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_lead_time`
--
ALTER TABLE `tbl_lead_time`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lotwise_inventory`
--
ALTER TABLE `tbl_lotwise_inventory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_master_settings`
--
ALTER TABLE `tbl_master_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_members`
--
ALTER TABLE `tbl_members`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_members_type`
--
ALTER TABLE `tbl_members_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_monthly_enquiry`
--
ALTER TABLE `tbl_monthly_enquiry`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_monthly_enquiry_tool_inventory`
--
ALTER TABLE `tbl_monthly_enquiry_tool_inventory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_operations`
--
ALTER TABLE `tbl_operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_operations_to_machine_allocations`
--
ALTER TABLE `tbl_operations_to_machine_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_operation_wise_shift_details`
--
ALTER TABLE `tbl_operation_wise_shift_details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_parameters`
--
ALTER TABLE `tbl_parameters`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_parameters_to_tool_allocations`
--
ALTER TABLE `tbl_parameters_to_tool_allocations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_po_invoice_details`
--
ALTER TABLE `tbl_po_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reservice_tool_details`
--
ALTER TABLE `tbl_reservice_tool_details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_shifts`
--
ALTER TABLE `tbl_shifts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_shift_details`
--
ALTER TABLE `tbl_shift_details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_tasks`
--
ALTER TABLE `tbl_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tasks_attachment`
--
ALTER TABLE `tbl_tasks_attachment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_temp_order`
--
ALTER TABLE `tbl_temp_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tools_inward`
--
ALTER TABLE `tbl_tools_inward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tools_to_company_allocations`
--
ALTER TABLE `tbl_tools_to_company_allocations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_tools_to_operation_allocations`
--
ALTER TABLE `tbl_tools_to_operation_allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tool_unique_codes`
--
ALTER TABLE `tbl_tool_unique_codes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_units_to_parameter_allocations`
--
ALTER TABLE `tbl_units_to_parameter_allocations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_vendorcompanies`
--
ALTER TABLE `tbl_vendorcompanies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_clientcompanies`
--
ALTER TABLE `tbl_clientcompanies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client_orders`
--
ALTER TABLE `tbl_client_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_companys_to_member_allocations`
--
ALTER TABLE `tbl_companys_to_member_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_companys_to_project_allocations`
--
ALTER TABLE `tbl_companys_to_project_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_component`
--
ALTER TABLE `tbl_component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cpc_threshold`
--
ALTER TABLE `tbl_cpc_threshold`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_email_promotion`
--
ALTER TABLE `tbl_email_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_email_promotion_company`
--
ALTER TABLE `tbl_email_promotion_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_enquiry_details`
--
ALTER TABLE `tbl_enquiry_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_enquiry_member_order_details`
--
ALTER TABLE `tbl_enquiry_member_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_enquiry_status_remark`
--
ALTER TABLE `tbl_enquiry_status_remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inventory`
--
ALTER TABLE `tbl_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lead_time`
--
ALTER TABLE `tbl_lead_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lotwise_inventory`
--
ALTER TABLE `tbl_lotwise_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_master_settings`
--
ALTER TABLE `tbl_master_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_members`
--
ALTER TABLE `tbl_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_members_type`
--
ALTER TABLE `tbl_members_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_monthly_enquiry`
--
ALTER TABLE `tbl_monthly_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_monthly_enquiry_tool_inventory`
--
ALTER TABLE `tbl_monthly_enquiry_tool_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_operations`
--
ALTER TABLE `tbl_operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_operations_to_machine_allocations`
--
ALTER TABLE `tbl_operations_to_machine_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_operation_wise_shift_details`
--
ALTER TABLE `tbl_operation_wise_shift_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_parameters`
--
ALTER TABLE `tbl_parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_parameters_to_tool_allocations`
--
ALTER TABLE `tbl_parameters_to_tool_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_po_invoice_details`
--
ALTER TABLE `tbl_po_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reservice_tool_details`
--
ALTER TABLE `tbl_reservice_tool_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shifts`
--
ALTER TABLE `tbl_shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shift_details`
--
ALTER TABLE `tbl_shift_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tasks`
--
ALTER TABLE `tbl_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tasks_attachment`
--
ALTER TABLE `tbl_tasks_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_temp_order`
--
ALTER TABLE `tbl_temp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tools_inward`
--
ALTER TABLE `tbl_tools_inward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tools_to_company_allocations`
--
ALTER TABLE `tbl_tools_to_company_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tools_to_operation_allocations`
--
ALTER TABLE `tbl_tools_to_operation_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tool_unique_codes`
--
ALTER TABLE `tbl_tool_unique_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_units_to_parameter_allocations`
--
ALTER TABLE `tbl_units_to_parameter_allocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendorcompanies`
--
ALTER TABLE `tbl_vendorcompanies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
