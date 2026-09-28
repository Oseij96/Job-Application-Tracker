prompt --application/shared_components/user_interface/lovs/job_applications_role_title
begin
--   Manifest
--     JOB_APPLICATIONS.ROLE_TITLE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>9210439005001343
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYAPPWS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(16418520934378163)
,p_lov_name=>'JOB_APPLICATIONS.ROLE_TITLE'
,p_static_id=>'job-applications-role-title'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'JOB_APPLICATIONS'
,p_return_column_name=>'ID'
,p_display_column_name=>'ROLE_TITLE'
,p_default_sort_column_name=>'ROLE_TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'47067417382464'
);
wwv_flow_imp.component_end;
end;
/
