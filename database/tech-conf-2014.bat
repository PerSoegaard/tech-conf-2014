@echo off

set generator=c:\Projects\SQLGenerator\SQLGenerator\bin\Release\SQLGenerator.exe

set dbHost=localhost
set dbName=tech-conf-2014
set tableNames=Area Page Paragraph ItemTypeId ItemType_*

REM echo drop %dbHost% %dbName% %tableNames%
REM %generator% drop %dbHost% %dbName% %tableNames% > %dbName%.drop.sql
REM echo ""

REM echo schema %dbHost% %dbName% %tableNames%
REM %generator% schema %dbHost% %dbName% %tableNames% > %dbName%.schema.sql
REM echo ""

echo data %dbHost% %dbName% %tableNames%
%generator% data %dbHost% %dbName% %tableNames% > %dbName%.data.sql
echo ""
