<?php
	global $wpdb;

	$table_name   = $wpdb->prefix . "rich_web_photo_slider_manager";
	$table_name1  = $wpdb->prefix . "rich_web_photo_slider_instal";
	$table_name2  = $wpdb->prefix . "rich_web_slider_effects_data";
	$table_name5  = $wpdb->prefix . "rich_web_slider_effect1";
	$table_name6  = $wpdb->prefix . "rich_web_slider_effect2";
	$table_name7  = $wpdb->prefix . "rich_web_slider_effect3";
	$table_name8  = $wpdb->prefix . "rich_web_slider_effect4";
	$table_name9  = $wpdb->prefix . "rich_web_slider_effect5";
	$table_name10 = $wpdb->prefix . "rich_web_slider_effect6";
	$table_name11 = $wpdb->prefix . "rich_web_slider_effect7";
	$table_name12 = $wpdb->prefix . "rich_web_slider_effect8";
	$table_name13 = $wpdb->prefix . "rich_web_slider_effect9";
	$table_name14 = $wpdb->prefix . "rich_web_slider_effect10";

	$Rich_Web_Slider_Desc=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name1 WHERE id>%d", 0));

	for($i=0; $i<count($Rich_Web_Slider_Desc); $i++)
	{
		if(strlen($Rich_Web_Slider_Desc[$i]->Sl_Img_Description)>0 && strpos($Rich_Web_Slider_Desc[$i]->Sl_Img_Description, "&lt;/p&gt;")<=0)
		{
			$RW_Slider_Param = $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name WHERE id = %d", $Rich_Web_Slider_Desc[$i]->Sl_Number));
			$RW_Slider_Types = $wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name2 WHERE slider_name = %s", $RW_Slider_Param[0]->Slider_Type));

			if($RW_Slider_Types[0]->slider_type == 'Content Slider')
			{
				$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name6 WHERE richideo_EN_ID=%s", $RW_Slider_Types[0]->id));
				
				$New_RW_Slider_Desc = str_replace("\&","&", esc_html('<p><span style="color: ' . $Rich_Web_Effect[0]->rich_CS_Video_DC . '; font-size: ' . $Rich_Web_Effect[0]->rich_CS_Video_DFS . 'px; font-family: ' . $Rich_Web_Effect[0]->rich_CS_Video_DFF . '; text-align: ' . $Rich_Web_Effect[0]->rich_CS_Video_DTA . ';">' . $Rich_Web_Slider_Desc[$i]->Sl_Img_Description . '</span></p>'));
			}
			else if($RW_Slider_Types[0]->slider_type == 'Fashion Slider')
			{
				$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name7 WHERE rich_web_slider_ID=%s", $RW_Slider_Types[0]->id));
				
				$New_RW_Slider_Desc = str_replace("\&","&", esc_html('<p><span style="color: ' . $Rich_Web_Effect[0]->rich_fsl_Desc_Color . '; font-size: ' . $Rich_Web_Effect[0]->rich_fsl_Desc_Size . 'px; font-family: ' . $Rich_Web_Effect[0]->rich_fsl_Desc_Font_Family . '; text-align: ' . $Rich_Web_Effect[0]->rich_fsl_Desc_Text_Align . ';">' . $Rich_Web_Slider_Desc[$i]->Sl_Img_Description . '</span></p>'));
			}
			else if($RW_Slider_Types[0]->slider_type == 'Dynamic Slider')
			{
				$Rich_Web_Effect=$wpdb->get_results($wpdb->prepare("SELECT * FROM $table_name11 WHERE rich_web_slider_ID=%s", $RW_Slider_Types[0]->id));
				
				$New_RW_Slider_Desc = str_replace("\&","&", esc_html('<p><span style="color: ' . $Rich_Web_Effect[0]->Rich_Web_Sl_DS_DC . '; font-size: ' . $Rich_Web_Effect[0]->Rich_Web_Sl_DS_DFS . 'px; font-family: ' . $Rich_Web_Effect[0]->Rich_Web_Sl_DS_DFF . ';">' . $Rich_Web_Slider_Desc[$i]->Sl_Img_Description . '</span></p>'));
			}
			else 
			{
				$New_RW_Slider_Desc = str_replace("\&","&", esc_html('<p>' . $Rich_Web_Slider_Desc[$i]->Sl_Img_Description . '</p>'));
			}
			$wpdb->query($wpdb->prepare("UPDATE $table_name1 set Sl_Img_Description=%s WHERE id=%d", $New_RW_Slider_Desc, $Rich_Web_Slider_Desc[$i]->id));
		}
	}
?>