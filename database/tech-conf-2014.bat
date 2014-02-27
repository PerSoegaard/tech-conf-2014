@echo off

set generator=c:\Projects\SQLGenerator\SQLGenerator\bin\Release\SQLGenerator.exe

set dbHost=localhost
set dbName=tech-conf-2014
set tableNames=Area Page Paragraph ItemType_*
set tableNames=Page Paragraph ItemTypeId ItemType_*

echo drop %dbHost% %dbName% %tableNames%
%generator% drop %dbHost% %dbName% %tableNames% > %dbName%.drop.sql
echo ""

echo schema %dbHost% %dbName% %tableNames%
%generator% schema %dbHost% %dbName% %tableNames% > %dbName%.schema.sql
echo ""

echo data %dbHost% %dbName% %tableNames%
%generator% data %dbHost% %dbName% %tableNames% > %dbName%.data.sql
echo ""
