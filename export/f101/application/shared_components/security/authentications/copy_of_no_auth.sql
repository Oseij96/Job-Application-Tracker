prompt --application/shared_components/security/authentications/copy_of_no_auth
begin
--   Manifest
--     AUTHENTICATION: Copy of No Auth
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>9210439005001343
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYAPPWS'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(16504206442458303)
,p_name=>'Copy of No Auth'
,p_static_id=>'copy-of-no-auth'
,p_scheme_type=>'NATIVE_DAD'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'username', 'nobody')).to_clob
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'47067486771527'
);
wwv_flow_imp.component_end;
end;
/
