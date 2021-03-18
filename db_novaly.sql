-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Şub 2021, 12:36:08
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.10

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db_novaly`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_sections`
--

CREATE TABLE `blog_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `breadcrumbs`
--

CREATE TABLE `breadcrumbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `breadcrumb_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `color_options`
--

CREATE TABLE `color_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_option` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact_sections`
--

CREATE TABLE `contact_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content_five_group_keywords`
--

CREATE TABLE `content_five_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `please_create_a_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_admin_panel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_frontend` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_footer_menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_dropdown` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_site_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `please_try_again` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `you_are_not_authorized` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_all_as_approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unread` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `content_five_group_keywords`
--

INSERT INTO `content_five_group_keywords` (`id`, `language_id`, `site_name`, `site_desc`, `site_keywords`, `please_create_a_category`, `languages`, `add_language`, `edit_language`, `language_name`, `language_code`, `direction`, `keywords`, `for_admin_panel`, `for_frontend`, `content_group`, `menu`, `hide`, `show`, `yes`, `no`, `display_footer_menu`, `display_dropdown`, `default_site_language`, `please_try_again`, `you_are_not_authorized`, `comment`, `comments`, `approval_status`, `mark_all_as_approval`, `read`, `unread`, `profile`, `change_password`) VALUES
(1, 1, 'Site Name', 'Site Description', 'Site Keywords', 'Please create a category.', 'Languages', 'Add Language', 'Edit Language', 'Language Name', 'Language Code', 'Direction', 'Keywords', 'For Admin Panel', 'For Frontend', 'Content Group', 'Menu', 'Hide', 'Show', 'Yes', 'No', 'Display Footer Menu?', 'Display Dropdown?', 'Default Site Language', 'Please try again!', 'You are not authorized to delete this operation.', 'Comment', 'Comments', 'Approval Status', 'Mark All As Approval', 'Read', 'Unread', 'Profile', 'Change Password');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content_four_group_keywords`
--

CREATE TABLE `content_four_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `map_iframe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_iframe_desc_placeholder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_all_as_read` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_map_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_small_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_white_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_colored_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sections` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `content_four_group_keywords`
--

INSERT INTO `content_four_group_keywords` (`id`, `language_id`, `map_iframe`, `map_iframe_desc_placeholder`, `contact`, `add_contact`, `edit_contact`, `socials`, `add_social`, `edit_social`, `link`, `email`, `subject`, `message`, `read_status`, `mark_all_as_read`, `mark`, `messages`, `site_info`, `copyright`, `address`, `address_map_link`, `phone`, `site_images`, `favicon`, `admin_logo`, `admin_small_logo_image`, `site_white_logo_image`, `site_colored_logo_image`, `google_analytic`, `external_url`, `breadcrumb`, `sections`, `seo`) VALUES
(1, 1, 'Map Iframe (link in src)', 'Please find your address on Google Map. And click the Share Button on the Left Side. You will see the Map Placement Area. In the Copy Html field in this section Copy and paste the link in the src from the code inside.', 'Contact', 'Add Contact', 'Edit Contact', 'Socials', 'Add Social', 'Edit Social', 'Link', 'Email', 'Subject', 'Message', 'Read Status', 'Mark All As Read', 'Mark', 'Messages', 'Site Info', 'Copyright', 'Address', 'Address Map Link', 'Phone', 'Site Images', 'Favicon', 'Admin Logo', 'Admin Small Logo', 'Site White Logo', 'Site Colored Logo', 'Google Analytic', 'External Url', 'Breadcrumb', 'Sections', 'Seo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content_one_group_keywords`
--

CREATE TABLE `content_one_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `sliders` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_slider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_slider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_new` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommended_size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_successfully` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_successfully` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_successfully` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_yet_created` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `close` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `you_wont_be_able_to_revert_this` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes_delete_it` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_your_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `content_one_group_keywords`
--

INSERT INTO `content_one_group_keywords` (`id`, `language_id`, `sliders`, `add_slider`, `edit_slider`, `add_new`, `title`, `desc`, `btn_name`, `btn_link`, `order`, `image`, `size`, `recommended_size`, `submit`, `action`, `created_successfully`, `updated_successfully`, `deleted_successfully`, `current_image`, `not_yet_created`, `delete`, `close`, `you_wont_be_able_to_revert_this`, `cancel`, `yes_delete_it`, `categories`, `add_category`, `edit_category`, `category_name`, `status`, `select_your_option`, `enable`, `disable`) VALUES
(1, 1, 'Sliders', 'Add Slider', 'Edit Slider', 'Add New', 'Title', 'Description', 'Button Name', 'Button Link', 'Order', 'Image', 'size', 'You do not have to use the recommended sizes. However, please use the recommended sizes for your site design to look its best.', 'Submit', 'Action', 'Created Successfully.', 'Updated Successfully.', 'Deleted Successfully.', 'Current Image', 'Not yet created.', 'Delete', 'Close', 'You wont be able to revert this!', 'Cancel', 'Yes, delete it!', 'Categories', 'Add Category', 'Edit Category', 'Category Name', 'Status', 'Select Your Option', 'Enable', 'Disable');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content_six_group_keywords`
--

CREATE TABLE `content_six_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `current_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_faq` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_faq` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending_approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `which_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminding` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Color Option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `content_six_group_keywords`
--

INSERT INTO `content_six_group_keywords` (`id`, `language_id`, `current_password`, `new_password`, `confirm_password`, `add_faq`, `edit_faq`, `favicon_image`, `admin_logo_image`, `pending_approval`, `approval`, `which_language`, `reminding`, `color_option`) VALUES
(1, 1, 'Current Password', 'New Password', 'Confirm Password', 'Add Faq', 'Edit Faq', 'Favicon', 'Admin Logo Image', 'Pending Approval', 'Approval', 'Which language do you want to create the data?', 'Please note that all the entries you create will be based on your chosen language.', 'Color Option');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content_three_group_keywords`
--

CREATE TABLE `content_three_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `percent_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_project` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_project` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponsors` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_sponsor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_sponsor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prices` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annually` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `please_take_with_features_semicolon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_testimonial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_testimonial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shadow_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `content_three_group_keywords`
--

INSERT INTO `content_three_group_keywords` (`id`, `language_id`, `percent_rate`, `projects`, `add_project`, `edit_project`, `sponsors`, `add_sponsor`, `edit_sponsor`, `prices`, `add_price`, `edit_price`, `currency`, `price`, `time`, `monthly`, `annually`, `please_take_with_features_semicolon`, `faqs`, `add_faqs`, `edit_faqs`, `question`, `answer`, `testimonials`, `add_testimonial`, `edit_testimonial`, `shadow_text`, `star`, `galleries`, `add_gallery`, `edit_gallery`, `pages`, `add_page`, `edit_page`) VALUES
(1, 1, 'Percent Rate', 'Projects', 'Add Project', 'Edit Project', 'Sponsors', 'Add Sponsor', 'Edit Sponsor', 'Prices', 'Add Price', 'Edit Price', 'Currency', 'Price', 'Time', 'Monthly', 'Annually', 'Please take with features semicolon(;).', 'Faqs', 'Add Faqs', 'Edit Faqs', 'Question', 'Answer', 'Testimonials', 'Add Testimonial', 'Edit Testimonial', 'Shadow Text', 'Star', 'Galleries', 'Add Gallery', 'Edit Gallery', 'Pages', 'Add Page', 'Edit Page');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content_two_group_keywords`
--

CREATE TABLE `content_two_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `section_title_and_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_blog` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_blog` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seperate_with_commas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_feature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_feature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counters` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_counter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_counter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_team` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_team` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_skill` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_skill` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `content_two_group_keywords`
--

INSERT INTO `content_two_group_keywords` (`id`, `language_id`, `section_title_and_desc`, `top_title`, `blogs`, `add_blog`, `edit_blog`, `short_desc`, `tag`, `seperate_with_commas`, `author`, `category`, `post_date`, `view`, `features`, `add_feature`, `edit_feature`, `about`, `counters`, `add_counter`, `edit_counter`, `icon`, `timer`, `services`, `add_service`, `edit_service`, `teams`, `add_team`, `edit_team`, `name`, `job`, `skills`, `add_skill`, `edit_skill`) VALUES
(1, 1, 'Section Title/Description', 'Top Title', 'Blogs', 'Add Blog', 'Edit Blog', 'Short Description', 'Tag', 'Seperate with commas', 'Author', 'Category', 'Post Date', 'View', 'Features', 'Add Feature', 'Edit Feature', 'About', 'Counters', 'Add Counter', 'Edit Counter', 'Icon', 'Timer', 'Services', 'Add Service', 'Edit Service', 'Teams', 'Add Team', 'Edit Team', 'Name', 'Job', 'Skills', 'Add Skill', 'Edit Skill');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timer` int(11) NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faq_sections`
--

CREATE TABLE `faq_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `feature_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `frontend_one_group_keywords`
--

CREATE TABLE `frontend_one_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `home` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_list` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_more` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_us_now` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `more_question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_news` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_message_has_been_delivered` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_comment_is_pending_approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_now` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recent_posts` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_monthly` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_annual` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `frontend_one_group_keywords`
--

INSERT INTO `frontend_one_group_keywords` (`id`, `language_id`, `home`, `about`, `services`, `teams`, `projects`, `news`, `pricing`, `faqs`, `skills`, `contact`, `gallery`, `galleries`, `office_address`, `social_list`, `read_more`, `call_us_now`, `more_question`, `testimonials`, `all_news`, `your_message_has_been_delivered`, `your_comment_is_pending_approval`, `help`, `contact_info`, `submit_now`, `updating`, `all`, `recent_posts`, `by`, `pages`, `per_monthly`, `per_annual`, `comments`) VALUES
(1, 1, 'Home', 'About', 'Services', 'Teams', 'Projects', 'News', 'Pricing', 'Faqs', 'Skills', 'Contact', 'Gallery', 'Galleries', 'Office Address', 'Social List', 'Read More', 'Call Us Now', 'More Question?', 'Testimonials', 'ALL NEWS', 'Your message has been delivered.', 'Your comment is pending approval.', 'Help', 'Contact Info', 'Submit Now', 'Updating...', 'All', 'Recent Posts', 'by', 'Pages', 'Per Monthly', 'Per Annual', 'Comments');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `frontend_two_group_keywords`
--

CREATE TABLE `frontend_two_group_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `leave_a_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `your_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_results` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_here` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nothing_found` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `links` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_us` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_more` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `frontend_two_group_keywords`
--

INSERT INTO `frontend_two_group_keywords` (`id`, `language_id`, `leave_a_comment`, `your_name`, `your_email`, `your_comment`, `post_comment`, `search`, `search_results`, `search_here`, `nothing_found`, `categories`, `links`, `contact_us`, `view_more`, `name`, `email`, `subject`, `message`, `tags`, `admin`) VALUES
(1, 1, 'Leave A Comment', 'Your Name *', 'Your Email *', 'Your Comment *', 'Post Comment', 'Search', 'Search Results', 'Search Here', 'Nothing Found', 'Categories', 'Links', 'Contact Us', 'View More', 'Name *', 'Email *', 'Subject *', 'Message *', 'Tags', 'Admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_analytic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `display_dropdown` int(11) NOT NULL,
  `default_site_language` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `direction`, `status`, `display_dropdown`, `default_site_language`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, 1, 1, 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_keywords`
--

CREATE TABLE `menu_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `dashboard` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counters` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponsors` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prices` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage_versions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sections` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optimizer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifications` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `which_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminding` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color_option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Color Option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_keywords`
--

INSERT INTO `menu_keywords` (`id`, `language_id`, `dashboard`, `banner`, `sliders`, `categories`, `blogs`, `features`, `about`, `counters`, `services`, `teams`, `skills`, `projects`, `sponsors`, `prices`, `faqs`, `testimonials`, `contact`, `contact_info`, `socials`, `messages`, `pages`, `settings`, `site_info`, `site_images`, `homepage_versions`, `google_analytic`, `external_url`, `breadcrumb`, `sections`, `seo`, `languages`, `optimizer`, `logout`, `notifications`, `profile`, `change_password`, `data_language`, `comments`, `galleries`, `which_language`, `reminding`, `created_at`, `updated_at`, `color_option`) VALUES
(1, 1, 'Dashboard', 'Banner', 'Sliders', 'Categories', 'Blogs', 'Features', 'About', 'Counters', 'Services', 'Teams', 'Skills', 'Projects', 'Sponsors', 'Prices', 'Faqs', 'Testimonials', 'Contact', 'Contact Info', 'Socials', 'Messages', 'Pages', 'Settings', 'Site Info', 'Site Images', 'Homepage Versions', 'Google Analytic', 'External Url', 'Breadcrumb', 'Sections', 'Seo', 'Languages', 'Optimizer', 'Logout', 'Notifications', 'Profile', 'Change Password', 'Data Language', 'Comments', 'Galleries', 'Which language do you want to create the data?', 'Please note that all the entries you create will be based on your chosen language.', '2021-02-05 08:30:10', '2021-02-05 08:30:10', 'Color Option');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_ses_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_09_24_005133_create_sessions_table', 1),
(7, '2020_09_26_225805_create_languages_table', 1),
(8, '2020_09_30_133427_create_sliders_table', 1),
(9, '2020_09_30_231340_create_abouts_table', 1),
(10, '2020_10_06_090858_create_services_table', 1),
(11, '2020_10_07_095629_create_service_sections_table', 1),
(12, '2020_10_08_123654_create_features_table', 1),
(13, '2020_10_08_204636_create_counters_table', 1),
(14, '2020_10_09_193118_create_prices_table', 1),
(15, '2020_10_10_092350_create_teams_table', 1),
(16, '2020_10_10_092409_create_team_sections_table', 1),
(17, '2020_10_12_133209_create_faqs_table', 1),
(18, '2020_10_12_133231_create_faq_sections_table', 1),
(19, '2020_10_16_144438_create_site_infos_table', 1),
(20, '2020_10_21_053827_create_google_analytics_table', 1),
(21, '2020_10_21_055547_create_seos_table', 1),
(22, '2020_10_21_073549_create_categories_table', 1),
(23, '2020_10_22_003541_create_blogs_table', 1),
(24, '2020_10_22_004159_create_blog_sections_table', 1),
(25, '2020_10_24_064553_create_contacts_table', 1),
(26, '2020_10_24_064616_create_contact_sections_table', 1),
(27, '2020_10_25_004806_create_site_images_table', 1),
(28, '2020_11_01_133405_create_menu_keywords_table', 1),
(29, '2020_11_01_173003_create_content_one_group_keywords_table', 1),
(30, '2020_11_02_085101_create_content_two_group_keywords_table', 1),
(31, '2020_11_02_085802_create_content_three_group_keywords_table', 1),
(32, '2020_11_02_095041_create_content_four_group_keywords_table', 1),
(33, '2020_11_02_095441_create_content_five_group_keywords_table', 1),
(34, '2020_11_05_081548_create_socials_table', 1),
(35, '2020_11_05_125854_create_breadcrumbs_table', 1),
(36, '2020_11_05_132410_create_sections_table', 1),
(37, '2020_11_05_142833_create_colors_table', 1),
(38, '2020_11_06_073530_create_pages_table', 1),
(39, '2020_11_06_110956_create_content_six_group_keywords_table', 1),
(40, '2020_11_11_112402_create_messages_table', 1),
(41, '2020_11_18_125114_create_testimonials_table', 1),
(42, '2020_11_18_125134_create_testimonial_sections_table', 1),
(43, '2020_11_19_105332_create_comments_table', 1),
(44, '2020_11_25_195255_create_frontend_one_group_keywords_table', 1),
(45, '2020_11_25_195818_create_frontend_two_group_keywords_table', 1),
(46, '2020_12_09_174622_create_skills_table', 1),
(47, '2020_12_09_174640_create_skill_sections_table', 1),
(48, '2020_12_09_205619_create_projects_table', 1),
(49, '2020_12_09_205637_create_project_sections_table', 1),
(50, '2020_12_09_223455_create_sponsors_table', 1),
(51, '2020_12_15_190411_create_galleries_table', 1),
(52, '2021_02_05_064120_create_color_options_table', 1),
(53, '2021_02_05_084011_add_color_option_to_menu_keywords_table', 1),
(54, '2021_02_05_084302_add_color_option_to_content_six_group_keywords_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_footer_menu` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `page_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 1,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `project_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `project_sections`
--

CREATE TABLE `project_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sections`
--

INSERT INTO `sections` (`id`, `title`, `section`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Page Menu', 'page_menu', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(2, 'Feature Section', 'feature_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(3, 'About Section', 'about_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(4, 'Service Section', 'service_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(5, 'Team Section', 'team_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(6, 'Counter Section', 'counter_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(7, 'Skill Section', 'skill_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(8, 'Project Section', 'project_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(9, 'Sponsor Section', 'sponsor_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(10, 'Price Section', 'price_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(11, 'Client Section', 'client_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(12, 'Gallery Section', 'gallery_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(13, 'Faq Section', 'faq_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(14, 'Blog Section', 'blog_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(15, 'Contact Section', 'contact_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(16, 'Footer Section', 'footer_section', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10'),
(17, 'Preloader', 'preloader', 1, '2021-02-05 08:30:10', '2021-02-05 08:30:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `service_sections`
--

CREATE TABLE `service_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_images`
--

CREATE TABLE `site_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `favicon_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_small_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_white_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_colored_logo_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_map_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_rate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `skill_sections`
--

CREATE TABLE `skill_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `top_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sponsor_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `team_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `team_sections`
--

CREATE TABLE `team_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `testimonial_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `testimonial_sections`
--

CREATE TABLE `testimonial_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `shadow_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

/*CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Tablo döküm verisi `users`
--

--INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
--(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$9jdGinaqX7ViLM2lWxmuouICkMz0edKkY.WGBcF6HWgWk4qdSWlna', NULL, NULL, NULL, NULL, NULL, '2021-02-05 08:30:10', '2021-02-05 08:30:10');

BEGIN;
INSERT INTO `users` VALUES (1, 'Admin', 'info@melink.vn', NULL, '$2y$10$9F3FHXJqhgGUuEgRvedZae87Mua7cleqnV5GoE1vIInOtYRX8d/Km', NULL, NULL, 'RoKz3NqDRYLEiXbnOX8W83BZfuO4fOlgOQaT6f5cVN5WoD4SWsHTYvyQnX1l', NULL, '1615847905-Icon-App-40x40@1x.png', '2021-02-05 15:30:10', '2021-03-16 02:03:46');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `breadcrumbs`
--
ALTER TABLE `breadcrumbs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`),
  ADD KEY `categories_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `color_options`
--
ALTER TABLE `color_options`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `contact_sections`
--
ALTER TABLE `contact_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `content_five_group_keywords`
--
ALTER TABLE `content_five_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_five_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `content_four_group_keywords`
--
ALTER TABLE `content_four_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_four_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `content_one_group_keywords`
--
ALTER TABLE `content_one_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_one_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `content_six_group_keywords`
--
ALTER TABLE `content_six_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_six_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `content_three_group_keywords`
--
ALTER TABLE `content_three_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_three_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `content_two_group_keywords`
--
ALTER TABLE `content_two_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_two_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counters_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `faq_sections`
--
ALTER TABLE `faq_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `frontend_one_group_keywords`
--
ALTER TABLE `frontend_one_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_one_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `frontend_two_group_keywords`
--
ALTER TABLE `frontend_two_group_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_two_group_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu_keywords`
--
ALTER TABLE `menu_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_keywords_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `project_sections`
--
ALTER TABLE `project_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seos_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `service_sections`
--
ALTER TABLE `service_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `site_images`
--
ALTER TABLE `site_images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_infos_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `skill_sections`
--
ALTER TABLE `skill_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `team_sections`
--
ALTER TABLE `team_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_sections_language_id_foreign` (`language_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `blog_sections`
--
ALTER TABLE `blog_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `breadcrumbs`
--
ALTER TABLE `breadcrumbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `color_options`
--
ALTER TABLE `color_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `contact_sections`
--
ALTER TABLE `contact_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `content_five_group_keywords`
--
ALTER TABLE `content_five_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `content_four_group_keywords`
--
ALTER TABLE `content_four_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `content_one_group_keywords`
--
ALTER TABLE `content_one_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `content_six_group_keywords`
--
ALTER TABLE `content_six_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `content_three_group_keywords`
--
ALTER TABLE `content_three_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `content_two_group_keywords`
--
ALTER TABLE `content_two_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `faq_sections`
--
ALTER TABLE `faq_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `frontend_one_group_keywords`
--
ALTER TABLE `frontend_one_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `frontend_two_group_keywords`
--
ALTER TABLE `frontend_two_group_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu_keywords`
--
ALTER TABLE `menu_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `project_sections`
--
ALTER TABLE `project_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `service_sections`
--
ALTER TABLE `service_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `site_images`
--
ALTER TABLE `site_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `skill_sections`
--
ALTER TABLE `skill_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `team_sections`
--
ALTER TABLE `team_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `blog_sections`
--
ALTER TABLE `blog_sections`
  ADD CONSTRAINT `blog_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `contact_sections`
--
ALTER TABLE `contact_sections`
  ADD CONSTRAINT `contact_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `content_five_group_keywords`
--
ALTER TABLE `content_five_group_keywords`
  ADD CONSTRAINT `content_five_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `content_four_group_keywords`
--
ALTER TABLE `content_four_group_keywords`
  ADD CONSTRAINT `content_four_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `content_one_group_keywords`
--
ALTER TABLE `content_one_group_keywords`
  ADD CONSTRAINT `content_one_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `content_six_group_keywords`
--
ALTER TABLE `content_six_group_keywords`
  ADD CONSTRAINT `content_six_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `content_three_group_keywords`
--
ALTER TABLE `content_three_group_keywords`
  ADD CONSTRAINT `content_three_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `content_two_group_keywords`
--
ALTER TABLE `content_two_group_keywords`
  ADD CONSTRAINT `content_two_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `counters`
--
ALTER TABLE `counters`
  ADD CONSTRAINT `counters_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `faq_sections`
--
ALTER TABLE `faq_sections`
  ADD CONSTRAINT `faq_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `frontend_one_group_keywords`
--
ALTER TABLE `frontend_one_group_keywords`
  ADD CONSTRAINT `frontend_one_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `frontend_two_group_keywords`
--
ALTER TABLE `frontend_two_group_keywords`
  ADD CONSTRAINT `frontend_two_group_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `menu_keywords`
--
ALTER TABLE `menu_keywords`
  ADD CONSTRAINT `menu_keywords_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `project_sections`
--
ALTER TABLE `project_sections`
  ADD CONSTRAINT `project_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `seos`
--
ALTER TABLE `seos`
  ADD CONSTRAINT `seos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `service_sections`
--
ALTER TABLE `service_sections`
  ADD CONSTRAINT `service_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `site_infos`
--
ALTER TABLE `site_infos`
  ADD CONSTRAINT `site_infos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `skill_sections`
--
ALTER TABLE `skill_sections`
  ADD CONSTRAINT `skill_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `team_sections`
--
ALTER TABLE `team_sections`
  ADD CONSTRAINT `team_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  ADD CONSTRAINT `testimonial_sections_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
