prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>9210439005001343
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYAPPWS'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(15924262822980932)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'47067367420023'
);
wwv_flow_imp.component_end;
end;
/
