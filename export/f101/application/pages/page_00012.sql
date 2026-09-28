prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_name=>'About This App'
,p_alias=>'ABOUT-THIS-APP'
,p_step_title=>'About This App'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16477435894464659)
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
 p_id=>wwv_flow_imp.id(16459845764820614)
,p_plug_name=>'Project Overview'
,p_static_id=>'project-overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Job Application Tracker</h2>',
'',
'<p>',
'  Job Application Tracker is an Oracle APEX application designed to manage job applications,',
'  companies, users, interviews, and application status history.',
'</p>',
'',
'<p>',
'  The app uses Oracle SQL tables with foreign key relationships, PL/SQL package logic for',
'  validation and status updates, LOV-based form controls, dashboard analytics, pipeline cards,',
'  interview tracking, and audit history logging.',
'</p>',
'',
'<h3>Key Features</h3>',
'',
'<ul>',
'  <li>Application pipeline tracking</li>',
'  <li>Status update history</li>',
'  <li>Interview management</li>',
'  <li>Company and user management</li>',
'  <li>Dashboard KPIs and charts</li>',
'  <li>PL/SQL validation functions</li>',
'  <li>Relational database design</li>',
'  <li>Responsive report styling</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
