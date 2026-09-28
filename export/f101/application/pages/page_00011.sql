prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Application History'
,p_alias=>'APPLICATION-HISTORY'
,p_step_title=>'Application History'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16449535711699245)
,p_plug_name=>'Application History'
,p_static_id=>'application-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ah.id,',
'    ja.role_title,',
'    c.name AS company_name,',
'    u.first_name || '' '' || u.last_name AS user_name,',
'    ah.old_status,',
'    ah.new_status,',
'    ah.changed_at',
'FROM application_history ah',
'JOIN job_applications ja',
'    ON ah.application_id = ja.id',
'JOIN companies c',
'    ON ja.company_id = c.id',
'JOIN users u',
'    ON ja.user_id = u.id',
'ORDER BY ah.changed_at DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_prn_page_header=>'Application History'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16449631904699245)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>16449631904699245
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16452711897699254)
,p_db_column_name=>'CHANGED_AT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Changed On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16451569680699251)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16450353786699248)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16452365885699253)
,p_db_column_name=>'NEW_STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'New Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16451923761699252)
,p_db_column_name=>'OLD_STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Previous Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16451152179699250)
,p_db_column_name=>'ROLE_TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16450716340699249)
,p_db_column_name=>'USER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16453345892700483)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'164534'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:USER_NAME:ROLE_TITLE:COMPANY_NAME:OLD_STATUS:NEW_STATUS:CHANGED_AT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16448819901699243)
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
wwv_flow_imp.component_end;
end;
/
