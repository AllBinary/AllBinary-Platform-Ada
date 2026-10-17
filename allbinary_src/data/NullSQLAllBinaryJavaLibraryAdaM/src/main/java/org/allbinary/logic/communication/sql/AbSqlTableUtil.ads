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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.sql.AbSqlTableUtil_Package is

   package Portion_Package renames org.allbinary.business.installer.Portion_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AbSqlTableUtil is tagged;
   type AbSqlTableUtil_Access is access all AbSqlTableUtil'Class;
   type AbSqlTableUtil_Access_Array is array (Natural range <>) of AbSqlTableUtil_Access;
   type AbSqlTableUtil_Access_Array_Access is access all AbSqlTableUtil_Access_Array;

   type AbSqlTableUtil is new Java_Object with record
      TABLE_LABEL : Unbounded_String;
      stringUtil : StringUtil_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      sqlStrings : SqlStrings_Access;
   end record;
   instance : AbSqlTableUtil_Access;

   procedure Initialize (This : in out AbSqlTableUtil'Class);
   function Create return AbSqlTableUtil_Access;
   function getInstance return AbSqlTableUtil_Access;
   procedure getInstance;
   function backupTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access) return Unbounded_String;
   procedure backupTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access);
   function restoreTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access; portion : Portion_Access) return Unbounded_String;
   procedure restoreTable (This : in out AbSqlTableUtil; abSqlTable : AbSqlTable_Access; portion : Portion_Access);

end org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;


