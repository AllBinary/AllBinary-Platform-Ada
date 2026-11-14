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

with AllBinary_Java;
limited with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
package org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References is
   type AbSqlTableUtil_Access is access all org.allbinary.logic.communication.sql.AbSqlTableUtil_Package.AbSqlTableUtil'Class;
   type AbSqlTableUtil_Access_Array is array (Natural range <>) of AbSqlTableUtil_Access;
   type AbSqlTableUtil_Access_Array_Access is access all AbSqlTableUtil_Access_Array;
   type AbSqlTableUtil_Access_Array_Access_Array is array (Natural range <>) of AbSqlTableUtil_Access_Array_Access;
   type AbSqlTableUtil_Access_Array_Access_Array_Access is access all AbSqlTableUtil_Access_Array_Access_Array;
   type AbSqlTableUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbSqlTableUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AbSqlTableUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbSqlTableUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbSqlTableUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbSqlTableUtil_Access_Array_Access is (if Value /= null and then Value.all in AbSqlTableUtil_Access_Array_Object'Class then AbSqlTableUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AbSqlTableUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbSqlTableUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbSqlTableUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbSqlTableUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbSqlTableUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbSqlTableUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbSqlTableUtil_Access_Array_Access_Array_Object'Class then AbSqlTableUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References;

with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.installer.Portion_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package_References;
limited with org.allbinary.logic.communication.sql.AbSqlTable_Package;
with org.allbinary.logic.communication.sql.AbSqlTable_Package_References;

package org.allbinary.logic.communication.sql.AbSqlTableUtil_Package is

   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Portion_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access;
   use type Portion_Access;
   subtype Portion_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array;
   use type Portion_Access_Array;
   subtype Portion_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access;
   use type Portion_Access_Array_Access;
   subtype Portion_Access_Array_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array;
   use type Portion_Access_Array_Access_Array;
   subtype Portion_Access_Array_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array_Access;
   use type Portion_Access_Array_Access_Array_Access;
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype SqlStrings_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access;
   use type SqlStrings_Access;
   subtype SqlStrings_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array;
   use type SqlStrings_Access_Array;
   subtype SqlStrings_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access;
   use type SqlStrings_Access_Array_Access;
   subtype SqlStrings_Access_Array_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array;
   use type SqlStrings_Access_Array_Access_Array;
   subtype SqlStrings_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array_Access;
   use type SqlStrings_Access_Array_Access_Array_Access;
   subtype AbSqlTable_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access;
   use type AbSqlTable_Access;
   subtype AbSqlTable_Access_Array is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array;
   use type AbSqlTable_Access_Array;
   subtype AbSqlTable_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access;
   use type AbSqlTable_Access_Array_Access;
   subtype AbSqlTable_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access_Array;
   use type AbSqlTable_Access_Array_Access_Array;
   subtype AbSqlTable_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access_Array_Access;
   use type AbSqlTable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbSqlTableUtil_Access is org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.AbSqlTableUtil_Access;
   function "=" (Left, Right : AbSqlTableUtil_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References."=";
   subtype AbSqlTableUtil_Access_Array is org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.AbSqlTableUtil_Access_Array;
   function "=" (Left, Right : AbSqlTableUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References."=";
   subtype AbSqlTableUtil_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.AbSqlTableUtil_Access_Array_Access;
   function "=" (Left, Right : AbSqlTableUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References."=";
   function Java_Box (Value : AbSqlTableUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.Java_Box;
   function Java_Unbox_AbSqlTableUtil_Access_Array (Value : access Java_Object'Class) return AbSqlTableUtil_Access_Array_Access renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.Java_Unbox_AbSqlTableUtil_Access_Array;
   subtype AbSqlTableUtil_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.AbSqlTableUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AbSqlTableUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References."=";
   subtype AbSqlTableUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.AbSqlTableUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbSqlTableUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References."=";
   function Java_Box (Value : AbSqlTableUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.Java_Box;
   function Java_Unbox_AbSqlTableUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AbSqlTableUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package_References.Java_Unbox_AbSqlTableUtil_Access_Array_Access_Array;

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
   function backupTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class) return Unbounded_String;
   procedure backupTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class);
   function restoreTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class; portion_Param : access Portion_Package.Portion'Class) return Unbounded_String;
   procedure restoreTable (This : in out AbSqlTableUtil; abSqlTable_Param : access AbSqlTable_Package.AbSqlTable'Class; portion_Param : access Portion_Package.Portion'Class);

end org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;


