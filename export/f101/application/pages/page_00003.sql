prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Form'
,p_alias=>'FORM'
,p_step_title=>'Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15948427472001737)
,p_plug_name=>'Form'
,p_static_id=>'form'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(15924855749980937)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15949127577001802)
,p_plug_name=>'Job Application Form'
,p_static_id=>'job-application-form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'JOB_APPLICATIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15955079010001822)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15956451222001825)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15955667360001824)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15956062130001824)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15956748945001826)
,p_branch_name=>'Go To Pipeline'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(16459210029820608)
,p_branch_name=>'Go to Add Interview'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_APPLICATION_ID:&P3_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P3_STATUS = ''Interview'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15951801007001813)
,p_name=>'P3_APPLIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Applied Date'
,p_source=>'APPLIED_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15950279676001809)
,p_name=>'P3_COMPANY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_prompt=>'Company'
,p_source=>'COMPANY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPANIES.NAME'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Company --'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15949473665001803)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15952250144001814)
,p_name=>'P3_NOTES'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16460261492820618)
,p_name=>'P3_OLD_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15950674777001810)
,p_name=>'P3_ROLE_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role Title'
,p_source=>'ROLE_TITLE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15951021752001811)
,p_name=>'P3_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_prompt=>'Salary'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'SALARY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15951494451001812)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Applied'' AS display_value, ''Applied'' AS return_value',
'UNION ALL',
'SELECT ''Interview'', ''Interview''',
'UNION ALL',
'SELECT ''Rejected'', ''Rejected''',
'UNION ALL',
'SELECT ''Offer'', ''Offer''',
'UNION ALL',
'SELECT ''Accepted'', ''Accepted'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Status --'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15949848281001805)
,p_name=>'P3_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_item_source_plug_id=>wwv_flow_imp.id(15949127577001802)
,p_prompt=>'User'
,p_source=>'USER_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    first_name || '' '' || last_name AS display_value,',
'    id AS return_value',
'FROM users',
'ORDER BY first_name, last_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select User --'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16459501093820611)
,p_validation_name=>'Validate Date Applied'
,p_static_id=>'validate-date-applied'
,p_validation_sequence=>30
,p_validation=>'JOB_APP_PKG.VALIDATE_DATE_APPLIED(:P3_APPLIED_DATE) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Error! Date Applied Cannot Be Empty'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16459336971820609)
,p_validation_name=>'Validate Role'
,p_static_id=>'validate-role'
,p_validation_sequence=>10
,p_validation=>'JOB_APP_PKG.VALIDATE_ROLE_TITLE(:P3_ROLE_TITLE) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Error! Role Title Cannot Be Empty'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16459463144820610)
,p_validation_name=>'Validate Status'
,p_static_id=>'validate-status'
,p_validation_sequence=>20
,p_validation=>'JOB_APP_PKG.VALIDATE_STATUS_ENTRY(:P3_STATUS) IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Error! Status Cannot Be Empty'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16460323512820619)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Old Status'
,p_static_id=>'get-old-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT status',
'    INTO :P3_OLD_STATUS',
'    FROM job_applications',
'    WHERE id = :P3_ID;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P3_OLD_STATUS := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P3_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>16460323512820619
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15957219398001828)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15949127577001802)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Job Application Form'
,p_static_id=>'initialize-form-job-application-form'
,p_internal_uid=>15957219398001828
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15957635244001829)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15949127577001802)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Job Application Form'
,p_static_id=>'process-form-job-application-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15957635244001829
);
wwv_flow_imp.component_end;
end;
/
