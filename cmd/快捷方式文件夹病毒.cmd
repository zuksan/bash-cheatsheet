echo 解决U盘快捷方式文件夹病毒脚本
echo 症状: 所有正常文件被隐藏然后创建出有及激活性的同名快捷方式
echo 正在杀毒并生成免疫 请勿关闭
attrib -r -a -s -h /s /d
del /f /s /q *.inf
MKDIR autorun.inf\Kill........\
attrib +r +a +s +h *.inf /s /d
echo 完成