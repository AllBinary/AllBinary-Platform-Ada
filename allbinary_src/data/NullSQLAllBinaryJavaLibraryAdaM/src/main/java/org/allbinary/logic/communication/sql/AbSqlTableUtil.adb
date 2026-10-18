--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.logic.communication.sql.AbSqlTableUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out AbSqlTableUtil'Class) is
   begin
      null;
      This.TABLE_LABEL := To_Unbounded_String ("Table: ");
      This.stringUtil := StringUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.sqlStrings := SqlStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out AbSqlTableUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AbSqlTableUtil_Access is
      This : constant AbSqlTableUtil_Access := new AbSqlTableUtil;
   begin
      AbSqlTableUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbSqlTableUtil_Access is
   begin
        return AbSqlTableUtil_Package.instance;
   end getInstance;

   function backupTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class) return Unbounded_String is
      abSqlTable : constant AbSqlTable_Access := AbSqlTable_Access (abSqlTable_Param);
      tableName : Unbounded_String;
   begin
        tableName := abSqlTable.getTableName;
        return This.TABLE_LABEL & tableName & To_Unbounded_String (" Backup Failed");
   end backupTable;

   function restoreTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class; portion_Param : access Portion_Package.Portion'Class) return Unbounded_String is
      abSqlTable : constant AbSqlTable_Access := AbSqlTable_Access (abSqlTable_Param);
      portion : constant Portion_Access := Portion_Access (portion_Param);
      tableName : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
        tableName := abSqlTable.getTableName;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.TABLE_LABEL);
        stringBuffer.append (tableName);
        stringBuffer.append (To_Unbounded_String (" Restoration Failed"));
        return stringBuffer.toString;
   end restoreTable;

   procedure backupTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class) is
      Java_Result : constant Unbounded_String := AbSqlTableUtil'Class (This).backupTable (abSqlTable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backupTable;

   procedure restoreTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class; portion_Param : access Portion_Package.Portion'Class) is
      Java_Result : constant Unbounded_String := AbSqlTableUtil'Class (This).restoreTable (abSqlTable_Param, portion_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restoreTable;

begin
   null;
   instance := AbSqlTableUtil_Package.Create;

end org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;


