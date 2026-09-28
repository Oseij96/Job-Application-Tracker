prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>9210439005001343
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYAPPWS'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Pipeline'
,p_alias=>'PIPELINE'
,p_step_title=>'Pipeline'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16320568898285824)
,p_plug_name=>'Application Pipeline'
,p_static_id=>'application-pipeline'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ja.id,',
'    ja.role_title,',
'    ja.status,',
'    ja.applied_date,',
'    ja.salary,',
'    c.name AS company_name,',
'    u.first_name || '' '' || u.last_name AS user_name,',
'',
'    CASE ja.status',
'        WHEN ''Applied'' THEN ''u-color-1''',
'        WHEN ''Interview'' THEN ''u-color-8''',
'        WHEN ''Offer'' THEN ''u-color-4''',
'        WHEN ''Accepted'' THEN ''u-color-5''',
'        WHEN ''Rejected'' THEN ''u-color-14''',
'    END AS badge_class',
'',
'FROM job_applications ja',
'JOIN companies c',
'    ON ja.company_id = c.id',
'JOIN users u',
'    ON ja.user_id = u.id',
'WHERE :P4_STATUS_FILTER IS NULL',
'    OR ja.status = :P4_STATUS_FILTER',
'ORDER BY ja.applied_date DESC;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"ROLE_TITLE","expr":"\"ROLE_TITLE\" asc"},{"key":"STATUS","expr":"\"STATUS\" asc"}],"itemName":"P4_ORDER_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16321021233285828)
,p_region_id=>wwv_flow_imp.id(16320568898285824)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'ROLE_TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'COMPANY_NAME'
,p_body_adv_formatting=>false
,p_body_column_name=>'STATUS'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'USER_NAME'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'ROLE_TITLE'
,p_icon_position=>'START'
,p_badge_column_name=>'STATUS'
,p_badge_css_classes=>'&BADGE_CLASS.'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(16338725884013748)
,p_card_id=>wwv_flow_imp.id(16321021233285828)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Edit'
,p_static_id=>'action'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_ID:&ID.#ID#'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16319865173285817)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(15924855749980937)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16321589428285833)
,p_name=>'P4_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16320568898285824)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'ROLE_TITLE'
,p_prompt=>'Order By'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Role Title;ROLE_TITLE,Status;STATUS'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10216999953650824)
,p_name=>'P4_STATUS_FILTER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16320568898285824)
,p_prompt=>'Filter by Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''All Statuses'' AS display_value, NULL AS return_value',
'UNION ALL',
'SELECT ''Applied'', ''Applied''',
'UNION ALL',
'SELECT ''Interview'', ''Interview''',
'UNION ALL',
'SELECT ''Rejected'', ''Rejected''',
'UNION ALL',
'SELECT ''Offer'', ''Offer''',
'UNION ALL',
'SELECT ''Accepted'', ''Accepted'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select status --'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp.component_end;
end;
/
