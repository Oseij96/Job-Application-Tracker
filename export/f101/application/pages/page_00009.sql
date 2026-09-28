prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Interviews'
,p_alias=>'INTERVIEWS'
,p_step_title=>'Interviews'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-wrap,',
'.t-Report,',
'.a-IRR-tableContainer {',
'    overflow-x: auto;',
'    display: block;',
'    width: 100%;',
'}',
'',
'.t-Report-report,',
'.a-IRR-table {',
'    min-width: 700px;',
'}'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16432848212378200)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16459056760820606)
,p_plug_name=>'Interviews'
,p_static_id=>'interviews'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    i.id,',
'    u.first_name || '' '' || u.last_name AS user_name,',
'    ja.role_title,',
'    c.name AS company,',
'    i.interview_date,',
'    i.stage,',
'    i.result,',
'    i.feedback,',
'    i.interviewer_name AS interviewer,',
'',
'    CASE i.result',
'        WHEN ''Passed'' THEN ''u-color-5''',
'        WHEN ''Failed'' THEN ''u-color-14''',
'        WHEN ''Pending'' THEN ''u-color-8''',
'        WHEN ''Cancelled'' THEN ''u-color-1''',
'    END AS badge_class',
'',
'FROM interviews i',
'JOIN job_applications ja',
'    ON i.application_id = ja.id',
'JOIN companies c',
'    ON ja.company_id = c.id',
'JOIN users u',
'    ON ja.user_id = u.id',
'ORDER BY i.interview_date DESC'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16459191322820607)
,p_region_id=>wwv_flow_imp.id(16459056760820606)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'STAGE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'COMPANY'
,p_body_adv_formatting=>false
,p_body_column_name=>'USER_NAME'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'INTERVIEWER'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'STAGE'
,p_icon_position=>'START'
,p_badge_column_name=>'RESULT'
,p_badge_css_classes=>'&BADGE_CLASS.'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16431216894378196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16459056760820606)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10::'
,p_button_css_classes=>'u-margin-bottom-md'
);
wwv_flow_imp.component_end;
end;
/
