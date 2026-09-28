prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>9210439005001343
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYAPPWS'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000101494441547801EC93CD0A015118865FE33F24A410215642CCD256D9B806AEC75D280B77C12558D9111B85F2570AA99931B3F213BE9A43B3F9BE7A6B1667DEEF';
wwv_flow_imp.g_varchar2_table(2) := 'E9E91CA9D29D68564682C5C3006C800DB001D280EBB84206FB7B6C0778CE3B4053F18B2101120137E47CEA9E5C128D4212FECB56675084194880771B1C7609F5620625DF154F761E4DE9DF4EDD1E883105A0681AC6B305CA311F6AD9C8C7E4834E623D40';
wwv_flow_imp.g_varchar2_table(3) := '027825151EE5F414BF7A41A759405B8E7F4D351D1507304A5E17B5E418026E929D5C6E1CF84D8BD164320CC0064803C3C906BDD1D25406D32D7935498095238CFE5C3595B53D240E4036081E200D08F693BF33001B60037F3740BDC31B000000FFFF7699';
wwv_flow_imp.g_varchar2_table(4) := '6C8600000006494441540300E9F0DB61F0A85B160000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(15927549063980985)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
