prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>9210439005001343
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYAPPWS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(15926425878980969)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'47230092757454'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21420636019924121)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_static_id=>'install-app'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
