prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
--   Manifest
--     AUTHENTICATION: Oracle APEX Accounts
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
 p_id=>wwv_flow_imp.id(15924555988980934)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'47067367420023'
);
wwv_flow_imp.component_end;
end;
/
