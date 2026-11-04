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


with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.communication.sql.AbSqlTable_Package; use org.allbinary.logic.communication.sql.AbSqlTable_Package;

package body org.allbinary.logic.communication.sql.AbSqlTableUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   subtype Portion_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access;
   function "=" (Left, Right : Portion_Access) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array;
   function "=" (Left, Right : Portion_Access_Array) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access;
   function "=" (Left, Right : Portion_Access_Array_Access) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array;
   function "=" (Left, Right : Portion_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Portion_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   function "=" (Left, Right : CommonSeps_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype SqlStrings_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access;
   function "=" (Left, Right : SqlStrings_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype SqlStrings_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array;
   function "=" (Left, Right : SqlStrings_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype SqlStrings_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access;
   function "=" (Left, Right : SqlStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype SqlStrings_Access_Array_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array;
   function "=" (Left, Right : SqlStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype SqlStrings_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SqlStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.SqlStrings_Package_References."=";
   subtype AbSqlTable_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access;
   function "=" (Left, Right : AbSqlTable_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array;
   function "=" (Left, Right : AbSqlTable_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access;
   function "=" (Left, Right : AbSqlTable_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access_Array;
   function "=" (Left, Right : AbSqlTable_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbSqlTable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
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
        return AbSqlTableUtil_Access (AbSqlTableUtil_Package.instance);
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
      Java_Result : constant Unbounded_String := AbSqlTableUtil'Class (This).backupTable (abSqlTable_Param => abSqlTable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backupTable;

   procedure restoreTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class; portion_Param : access Portion_Package.Portion'Class) is
      Java_Result : constant Unbounded_String := AbSqlTableUtil'Class (This).restoreTable (abSqlTable_Param => abSqlTable_Param, portion_Param => portion_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restoreTable;

begin
   null;
   instance := AbSqlTableUtil_Package.Create;

end org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;


