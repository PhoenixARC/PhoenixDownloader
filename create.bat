@echo off
echo =======================================
echo []  __  __          __               []
echo []  \ \/ / /\/\    / /               []
echo []   \  / /    \  / /                []
echo []   /  \/ /\/\ \/ /___              []
echo []  /_/\_\/    \/\____/              []
echo []                                   []
echo []                                   []
echo []                                   []
echo []                                   []
echo []             _            __  __   []
echo []    /\/\    /_\    /\ /\ /__\/__\  []
echo []   /    \  //_\\  / //_//_\ / \//  []
echo []  / /\/\ \/  _  \/ __ \//__/ _  \  []
echo []  \/    \/\_/ \_/\/  \/\__/\/ \_/  []
echo =======================================
echo                         Made by PhoenixARC
echo . >nul
echo . >nul
echo loading... please wait...
timeout 5 >NUL
cls
set /p "podno=podcast number: "
set /p "podid=podcast id: "
set /p "podname=podcast name: "
:h1
cls
echo =================================
echo []    XML MAKER by PhoenixARC  []
echo =================================
echo Create CoverArt:           0   []
echo Create Podcast:            1   []
echo Generate entry:            2   []
echo complete XML (run once):   3   []
echo Auto compile into 1 xml:   4   []
echo =================================
echo choose what you do.
set /p "opt=Choose 1-4: "
cls
if ["%opt%"] == ["0"] goto cov
if ["%opt%"] == ["1"] goto cp
if ["%opt%"] == ["2"] goto genentry
if ["%opt%"] == ["3"] goto fin
if ["%opt%"] == ["4"] goto compile_ovwrte
if ["%opt%"] == ["null"] goto error

:cov
copy IMAGE\cover.png path\PODCAST%podno%\USRDIR\images\
rename path\PODCAST%podno%\USRDIR\images\cover.png %podname%_podcast.png
copy IMAGE\blank.png path\PODCAST%podno%\USRDIR\images\
goto h1

:compile_ovwrte
set /p "podno=podcast#(no spaces)  PODCAST##: "
(
more path\PODCAST%podno%\USRDIR\1entries.xml
)>>path\PODCAST%podno%\USRDIR\1liblist.xml
(
more path\PODCAST%podno%\USRDIR\1entries.xml
more path\PODCAST%podno%\USRDIR\2info.xml
more path\PODCAST%podno%\USRDIR\3urls.xml
)>>path\PODCAST%podno%\USRDIR\podcast.xml
(
echo ^</XMBML^>
)>>path\PODCAST%podno%\USRDIR\podcast.xml
goto h1

:error
echo not a valid option!
timeout 3 >NUL
goto h1

:fin
(
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="update_podcast_main" attr="update_podcast_main" src="#update_podcast_item"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_0" attr="item_0" src="#%podid%000_items"/^> 
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_1" attr="item_1" src="#%podid%001_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_2" attr="item_2" src="#%podid%002_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_3" attr="item_3" src="#%podid%003_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_4" attr="item_4" src="#%podid%004_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_5" attr="item_5" src="#%podid%005_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_6" attr="item_6" src="#%podid%006_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_7" attr="item_7" src="#%podid%007_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_8" attr="item_8" src="#%podid%008_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_9" attr="item_9" src="#%podid%009_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_10" attr="item_10" src="#%podid%0010_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_11" attr="item_11" src="#%podid%0011_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_12" attr="item_12" src="#%podid%0012_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_13" attr="item_13" src="#%podid%0013_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_14" attr="item_14" src="#%podid%0014_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_15" attr="item_15" src="#%podid%0015_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_16" attr="item_16" src="#%podid%0016_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_17" attr="item_17" src="#%podid%0017_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_18" attr="item_18" src="#%podid%0018_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_19" attr="item_19" src="#%podid%0019_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_20" attr="item_20" src="#%podid%0020_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_21" attr="item_21" src="#%podid%0021_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_22" attr="item_22" src="#%podid%0022_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_23" attr="item_23" src="#%podid%0023_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_24" attr="item_24" src="#%podid%0024_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_25" attr="item_25" src="#%podid%0025_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_26" attr="item_26" src="#%podid%0026_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_27" attr="item_27" src="#%podid%0027_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_28" attr="item_28" src="#%podid%0028_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_29" attr="item_29" src="#%podid%0029_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_30" attr="item_30" src="#%podid%0030_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_31" attr="item_31" src="#%podid%0031_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_32" attr="item_32" src="#%podid%0032_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_33" attr="item_33" src="#%podid%0033_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_34" attr="item_34" src="#%podid%0034_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_35" attr="item_35" src="#%podid%0035_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_36" attr="item_36" src="#%podid%0036_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_37" attr="item_37" src="#%podid%0037_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_38" attr="item_38" src="#%podid%0038_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_39" attr="item_39" src="#%podid%0039_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_40" attr="item_40" src="#%podid%0040_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_41" attr="item_41" src="#%podid%0041_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_42" attr="item_42" src="#%podid%0042_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_43" attr="item_43" src="#%podid%0043_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_44" attr="item_44" src="#%podid%0044_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_45" attr="item_45" src="#%podid%0045_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_46" attr="item_46" src="#%podid%0046_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_47" attr="item_47" src="#%podid%0047_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_48" attr="item_48" src="#%podid%0048_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_49" attr="item_49" src="#%podid%0049_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_50" attr="item_50" src="#%podid%0050_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_51" attr="item_51" src="#%podid%0051_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_52" attr="item_52" src="#%podid%0052_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_53" attr="item_53" src="#%podid%0053_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_54" attr="item_54" src="#%podid%0054_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_55" attr="item_55" src="#%podid%0055_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_56" attr="item_56" src="#%podid%0056_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_57" attr="item_57" src="#%podid%0057_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_58" attr="item_58" src="#%podid%0058_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_59" attr="item_59" src="#%podid%0059_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_60" attr="item_60" src="#%podid%0060_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_61" attr="item_61" src="#%podid%0061_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_62" attr="item_62" src="#%podid%0062_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_63" attr="item_63" src="#%podid%0063_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_64" attr="item_64" src="#%podid%0064_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_65" attr="item_65" src="#%podid%0065_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_66" attr="item_66" src="#%podid%0066_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_67" attr="item_67" src="#%podid%0067_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_68" attr="item_68" src="#%podid%0068_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_69" attr="item_69" src="#%podid%0069_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_70" attr="item_70" src="#%podid%0070_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_71" attr="item_71" src="#%podid%0071_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_72" attr="item_72" src="#%podid%0072_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_73" attr="item_73" src="#%podid%0073_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_74" attr="item_74" src="#%podid%0074_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_75" attr="item_75" src="#%podid%0075_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_76" attr="item_76" src="#%podid%0076_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_77" attr="item_77" src="#%podid%0077_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_78" attr="item_78" src="#%podid%0078_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_79" attr="item_79" src="#%podid%0079_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_80" attr="item_80" src="#%podid%0080_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_81" attr="item_81" src="#%podid%0081_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_82" attr="item_82" src="#%podid%0082_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_83" attr="item_83" src="#%podid%0083_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_84" attr="item_84" src="#%podid%0084_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_85" attr="item_85" src="#%podid%0085_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_86" attr="item_86" src="#%podid%0086_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_87" attr="item_87" src="#%podid%0087_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_88" attr="item_88" src="#%podid%0088_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_89" attr="item_89" src="#%podid%0089_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_90" attr="item_90" src="#%podid%0090_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_91" attr="item_91" src="#%podid%0091_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_92" attr="item_92" src="#%podid%0092_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_93" attr="item_93" src="#%podid%0093_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_94" attr="item_94" src="#%podid%0094_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_95" attr="item_95" src="#%podid%0095_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_96" attr="item_96" src="#%podid%0096_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_97" attr="item_97" src="#%podid%0097_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_98" attr="item_98" src="#%podid%0098_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_99" attr="item_99" src="#%podid%0099_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_100" attr="item_100" src="#%podid%00100_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_101" attr="item_101" src="#%podid%00101_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_102" attr="item_102" src="#%podid%00102_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_103" attr="item_103" src="#%podid%00103_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_104" attr="item_104" src="#%podid%00104_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_105" attr="item_105" src="#%podid%00105_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_106" attr="item_106" src="#%podid%00106_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_107" attr="item_107" src="#%podid%00107_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_108" attr="item_108" src="#%podid%00108_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_109" attr="item_109" src="#%podid%00109_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_110" attr="item_110" src="#%podid%00110_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_111" attr="item_111" src="#%podid%00111_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_112" attr="item_112" src="#%podid%00112_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_113" attr="item_113" src="#%podid%00113_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_114" attr="item_114" src="#%podid%00114_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_115" attr="item_115" src="#%podid%00115_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_116" attr="item_116" src="#%podid%00116_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_117" attr="item_117" src="#%podid%00117_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_118" attr="item_118" src="#%podid%00118_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_119" attr="item_119" src="#%podid%00119_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_120" attr="item_120" src="#%podid%00120_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_121" attr="item_121" src="#%podid%00121_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_122" attr="item_122" src="#%podid%00122_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_123" attr="item_123" src="#%podid%00123_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_124" attr="item_124" src="#%podid%00124_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_125" attr="item_125" src="#%podid%00125_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_126" attr="item_126" src="#%podid%00126_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_127" attr="item_127" src="#%podid%00127_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_128" attr="item_128" src="#%podid%00128_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_129" attr="item_129" src="#%podid%00129_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_130" attr="item_130" src="#%podid%00130_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_131" attr="item_131" src="#%podid%00131_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_132" attr="item_132" src="#%podid%00132_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_133" attr="item_133" src="#%podid%00133_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_134" attr="item_134" src="#%podid%00134_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_135" attr="item_135" src="#%podid%00135_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_136" attr="item_136" src="#%podid%00136_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_137" attr="item_137" src="#%podid%00137_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_138" attr="item_138" src="#%podid%00138_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_139" attr="item_139" src="#%podid%00139_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_140" attr="item_140" src="#%podid%00140_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_141" attr="item_141" src="#%podid%00141_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_142" attr="item_142" src="#%podid%00142_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_143" attr="item_143" src="#%podid%00143_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_144" attr="item_144" src="#%podid%00144_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_145" attr="item_145" src="#%podid%00145_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_146" attr="item_146" src="#%podid%00146_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_147" attr="item_147" src="#%podid%00147_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_148" attr="item_148" src="#%podid%00148_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_149" attr="item_149" src="#%podid%00149_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_150" attr="item_150" src="#%podid%00150_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_151" attr="item_151" src="#%podid%00151_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_152" attr="item_152" src="#%podid%00152_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_153" attr="item_153" src="#%podid%00153_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_154" attr="item_154" src="#%podid%00154_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_155" attr="item_155" src="#%podid%00155_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_156" attr="item_156" src="#%podid%00156_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_157" attr="item_157" src="#%podid%00157_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_158" attr="item_158" src="#%podid%00158_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_159" attr="item_159" src="#%podid%00159_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_160" attr="item_160" src="#%podid%00160_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_161" attr="item_161" src="#%podid%00161_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_162" attr="item_162" src="#%podid%00162_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_163" attr="item_163" src="#%podid%00163_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_164" attr="item_164" src="#%podid%00164_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_165" attr="item_165" src="#%podid%00165_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_166" attr="item_166" src="#%podid%00166_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_167" attr="item_167" src="#%podid%00167_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_168" attr="item_168" src="#%podid%00168_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_169" attr="item_169" src="#%podid%00169_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_170" attr="item_170" src="#%podid%00170_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_171" attr="item_171" src="#%podid%00171_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_172" attr="item_172" src="#%podid%00172_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_173" attr="item_173" src="#%podid%00173_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_174" attr="item_174" src="#%podid%00174_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_175" attr="item_175" src="#%podid%00175_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_176" attr="item_176" src="#%podid%00176_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_177" attr="item_177" src="#%podid%00177_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_178" attr="item_178" src="#%podid%00178_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_179" attr="item_179" src="#%podid%00179_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_180" attr="item_180" src="#%podid%00180_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_181" attr="item_181" src="#%podid%00181_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_182" attr="item_182" src="#%podid%00182_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_183" attr="item_183" src="#%podid%00183_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_184" attr="item_184" src="#%podid%00184_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_185" attr="item_185" src="#%podid%00185_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_186" attr="item_186" src="#%podid%00186_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_187" attr="item_187" src="#%podid%00187_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_188" attr="item_188" src="#%podid%00188_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_189" attr="item_189" src="#%podid%00189_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_190" attr="item_190" src="#%podid%00190_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_191" attr="item_191" src="#%podid%00191_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_192" attr="item_192" src="#%podid%00192_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_193" attr="item_193" src="#%podid%00193_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_194" attr="item_194" src="#%podid%00194_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_195" attr="item_195" src="#%podid%00195_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_196" attr="item_196" src="#%podid%00196_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_197" attr="item_197" src="#%podid%00197_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_198" attr="item_198" src="#%podid%00198_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_199" attr="item_199" src="#%podid%00199_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_200" attr="item_200" src="#%podid%00200_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_201" attr="item_201" src="#%podid%00201_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_202" attr="item_202" src="#%podid%00202_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_203" attr="item_203" src="#%podid%00203_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_204" attr="item_204" src="#%podid%00204_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_205" attr="item_205" src="#%podid%00205_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_206" attr="item_206" src="#%podid%00206_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_207" attr="item_207" src="#%podid%00207_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_208" attr="item_208" src="#%podid%00208_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_209" attr="item_209" src="#%podid%00209_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_210" attr="item_210" src="#%podid%00210_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_211" attr="item_211" src="#%podid%00211_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_212" attr="item_212" src="#%podid%00212_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_213" attr="item_213" src="#%podid%00213_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_214" attr="item_214" src="#%podid%00214_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_215" attr="item_215" src="#%podid%00215_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_216" attr="item_216" src="#%podid%00216_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_217" attr="item_217" src="#%podid%00217_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_218" attr="item_218" src="#%podid%00218_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_219" attr="item_219" src="#%podid%00219_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_220" attr="item_220" src="#%podid%00220_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_221" attr="item_221" src="#%podid%00221_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_222" attr="item_222" src="#%podid%00222_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_223" attr="item_223" src="#%podid%00223_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_224" attr="item_224" src="#%podid%00224_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_225" attr="item_225" src="#%podid%00225_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_226" attr="item_226" src="#%podid%00226_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_227" attr="item_227" src="#%podid%00227_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_228" attr="item_228" src="#%podid%00228_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_229" attr="item_229" src="#%podid%00229_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_230" attr="item_230" src="#%podid%00230_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_231" attr="item_231" src="#%podid%00231_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_232" attr="item_232" src="#%podid%00232_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_233" attr="item_233" src="#%podid%00233_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_234" attr="item_234" src="#%podid%00234_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_235" attr="item_235" src="#%podid%00235_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_236" attr="item_236" src="#%podid%00236_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_237" attr="item_237" src="#%podid%00237_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_238" attr="item_238" src="#%podid%00238_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_239" attr="item_239" src="#%podid%00239_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_240" attr="item_240" src="#%podid%00240_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_241" attr="item_241" src="#%podid%00241_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_242" attr="item_242" src="#%podid%00242_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_243" attr="item_243" src="#%podid%00243_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_244" attr="item_244" src="#%podid%00244_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_245" attr="item_245" src="#%podid%00245_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_246" attr="item_246" src="#%podid%00246_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_247" attr="item_247" src="#%podid%00247_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_248" attr="item_248" src="#%podid%00248_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_249" attr="item_249" src="#%podid%00249_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_250" attr="item_250" src="#%podid%00250_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_251" attr="item_251" src="#%podid%00251_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_252" attr="item_252" src="#%podid%00252_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_253" attr="item_253" src="#%podid%00253_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_254" attr="item_254" src="#%podid%00254_items"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_255" attr="item_255" src="#%podid%00255_items"/^>
echo ^</Items^>
echo ^</View^>
)>>path\PODCAST%podno%\USRDIR\1liblist.xml
goto h1

:genentry
set /p "name=Entry name: "
set /p "dur=Item duration: "
set /p "itemno=item number: "
set /p "url=item URL (http only): "
set /p "desc=info: "
(
echo ^<View id="%podid%_items"^>
echo ^<Attributes^>
echo ^<Table key="update_podcast_main"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/update.png^</String^>^</Pair^>
echo ^<Pair key="title"^>^<String^>Update Podcast^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^>Downloads the latest podcast list.^</String^>^</Pair^>
echo ^</Table^>
echo ^<Table key="item_%itemno%"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/pspodcast.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>#%itemno% %name%^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>%dur% ^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
)>>path\PODCAST%podno%\USRDIR\1entries.xml


(
echo ^<View id="%podid%00%itemno%_items"^>
echo ^<Attributes^>
echo ^<Table key="item_%itemno%_001"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>   PLAY^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^<Pair key="module_name"^>^<String^>webbrowser_plugin^</String^>^</Pair^> 
echo ^<Pair key="module_action"^>^<String^>%url%^</String^>^</Pair^> 
echo ^</Table^>
echo ^<Table key="item_%itemno%_002"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>   DOWNLOAD^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^<Pair key="module_name"^>^<String^>webbrowser_plugin^</String^>^</Pair^> 
echo ^<Pair key="module_action"^>^<String^>%url%^</String^>^</Pair^> 
echo ^</Table^>
echo ^<Table key="info_00%itemno%_main"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>   INFO^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Item class="type:x-xmb/module-action" key="item_%itemno%_001" attr="item_%itemno%_001"/^>
echo ^<Item class="type:x-xmb/module-action" key="item_%itemno%_002" attr="item_%itemno%_002"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="info_00%itemno%_main" attr="info_00%itemno%_main" src="#info_00%itemno%_item"/^>
echo ^</Items^>
echo ^</View^> 
)>>path\PODCAST%podno%\USRDIR\3urls.xml
(
echo ^<View id="info_00%itemno%_item"^>
echo ^<Attributes^>
echo ^<Table key="info_00%itemno%"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^>	
echo ^<Pair key="title"^>^<String^>%name%^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^> %desc% ^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="info_00%itemno%" attr="info_00%itemno%"/^>
echo ^</Items^>
echo ^</View^>
)>>path\PODCAST%podno%\USRDIR\2info.xml
goto h1

:cp
md path\PODCAST%podno%\USRDIR\images
echo 0 >path\PODCAST%podno%\USRDIR\var.txt
(
echo ^<XMBML version="1.0"^>
echo ^<View id="main"^>
echo ^<Attributes^>
echo ^<Table key="%podid%_main"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/%podname%_podcast.png^</String^>^</Pair^>	
echo ^<Pair key="title"^>^<String^>%podname%^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="%podid%_main" attr="%podid%_main" src="#%podid%_items"/^>
echo ^</Items^>
echo ^</View^>
)>path\PODCAST%podno%\USRDIR\podcast.xml
pause
cls
goto h1

 REM Made by PhoenixARC -- posted to PSX-Place.com
 