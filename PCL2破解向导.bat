@echo off
title ��
echo PCL2�ƽ���
echo ������
echo 0.��PCL2���빤��Ŀ¼
echo 1.���PCL2�Ƿ����ڲ��
echo 2.de4dot������PCL2
echo 3.dnspy��PCL2
echo 4.����PCL2
echo 5.����ɫ����
echo 6.ʹ��PCL2���ù�������ע���
echo ���������ʼ��
echo ��������κ����⣬�뵽qqȺ1045839144
pause 1>nul
REM ����0
:stage0
cls
echo ����0
echo ���PCL2�ڲ����빤��Ŀ¼��������ΪPCL2.exe
echo ����������PCL2�Ƿ����
pause 1>nul
:stage0c
IF EXIST PCL2.exe (
echo ��⵽PCL2
echo �������������һ��
pause 1>nul
) ELSE (
echo δ��⵽PCL2
echo ����������¼��
pause 1>nul
goto stage0c
)
REM ����1
:stage1
cls
echo ����1
echo ��ȷ��PCL2���ڲ��/�����
echo ���ڲ��/������޷�����
echo �ⲻ��һ����bug
echo ����PCL2����
echo �������������һ��
pause 1>nul
REM ����2
:stage2
cls
echo ����2
echo ʹ��de4dot������PCL2
echo ���������ʼ
pause 1>nul
:stage2c
where DE4DOT-X64.exe 1>nul
IF NOT ERRORLEVEL 1 (
echo ��⵽de4dot
echo ���������ʼ�Զ���������
pause 1>nul
) ELSE (
echo δ��⵽de4dot
echo ���    https://github.com/0xd4d/de4dot    ���ػ�������°�
echo ����������¼��
pause 1>nul
goto stage2c
)
:stage2d
DE4DOT-X64 PCL2.exe
timeout 5
IF EXIST PCL2-cleaned.exe (
echo Done!
echo �������������һ��
pause 1>nul
) else (
echo de4dot������ʧ��
echo �����������
pause 1>nul
goto stage2d
)
:stage3
cls
echo ����3
echo ʹ��dnspy��PCL2
echo ���������
pause 1>nul
:stage3c
where dnspy.exe 1>nul
IF NOT ERRORLEVEL 1 (
echo ��⵽dnspy
echo ���������dnspy
pause 1>nul
) else (
echo δ��⵽dnspy
echo ���    https://github.com/0xd4d/dnspy    ���ػ�������°�
echo ����������¼��
pause 1>nul
goto stage3c
)
start dnspy PCL2-cleaned.exe
timeout 19
:stage4
cls
echo ������
echo ������ɫ����
echo ��ɫ�����麯��Ӧ����SecureRemoveRsa�ڣ����ó����������ܣ�����������
echo �Ҽ��༭����
echo Ȼ���Ϊreturn true;
echo �������
echo Ȼ�������Ͻ��ļ�->����ģ��
echo ���ȷ�Ͼͺ�
echo ������
echo ���㶮û������һ���Ͷ���
echo �������������һ����
pause 1>nul
:stage5
cls
echo ������
echo ����ɫ����
echo �����������PCL2
pause 1>nul
start pcl2.exe
timeout 300
REM https://github.com/VBSSCBGroup/PLC2Tool/releases/download/v0.1/Debug.7z
:stage6
cls
echo ������
echo ʹ��PCL2���ù�������ע���
echo �����������PCL2���ù���
pause 1>nul
:stage6c
where PLC2Tool.exe 1>nul
IF NOT ERRORLEVEL 1 (
echo ��⵽PCL2���ù���
echo ���������ʼ�Զ���������
pause 1>nul
) ELSE (
echo δ��⵽PCL2���ù���
echo ���    https://github.com/VBSSCBGroup/PLC2Tool    ���ػ�������°�
echo (    https://github.com/VBSSCBGroup/PLC2Tool/releases/download/v0.1/Debug.7z    )
echo ����������¼��
pause 1>nul
goto stage6c
)
PLC2Tool
:stage7
echo ������
echo ����ɣ��������PCL2
echo ��������˳���
timeout 5 1>nul