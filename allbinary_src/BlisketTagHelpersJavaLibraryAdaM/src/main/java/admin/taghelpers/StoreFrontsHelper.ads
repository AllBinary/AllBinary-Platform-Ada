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

limited with admin.taghelpers.StoreFrontsHelper_Package;
package admin.taghelpers.StoreFrontsHelper_Package_References is
   type StoreFrontsHelper_Access is access all admin.taghelpers.StoreFrontsHelper_Package.StoreFrontsHelper'Class;
   type StoreFrontsHelper_Access_Array is array (Natural range <>) of StoreFrontsHelper_Access;
   type StoreFrontsHelper_Access_Array_Access is access all StoreFrontsHelper_Access_Array;
   type StoreFrontsHelper_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsHelper_Access_Array_Access;
   type StoreFrontsHelper_Access_Array_Access_Array_Access is access all StoreFrontsHelper_Access_Array_Access_Array;
end admin.taghelpers.StoreFrontsHelper_Package_References;

with admin.taghelpers.StoreFrontsHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.installer.Portion_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package_References;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.StoreFrontsHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonPhoneStrings_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access;
   use type CommonPhoneStrings_Access;
   subtype CommonPhoneStrings_Access_Array is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array;
   use type CommonPhoneStrings_Access_Array;
   subtype CommonPhoneStrings_Access_Array_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access;
   use type CommonPhoneStrings_Access_Array_Access;
   subtype CommonPhoneStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access_Array;
   use type CommonPhoneStrings_Access_Array_Access_Array;
   subtype CommonPhoneStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonPhoneStrings_Package_References.CommonPhoneStrings_Access_Array_Access_Array_Access;
   use type CommonPhoneStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontsHelper_Access is admin.taghelpers.StoreFrontsHelper_Package_References.StoreFrontsHelper_Access;
   function "=" (Left, Right : StoreFrontsHelper_Access) return Boolean renames admin.taghelpers.StoreFrontsHelper_Package_References."=";
   subtype StoreFrontsHelper_Access_Array is admin.taghelpers.StoreFrontsHelper_Package_References.StoreFrontsHelper_Access_Array;
   function "=" (Left, Right : StoreFrontsHelper_Access_Array) return Boolean renames admin.taghelpers.StoreFrontsHelper_Package_References."=";
   subtype StoreFrontsHelper_Access_Array_Access is admin.taghelpers.StoreFrontsHelper_Package_References.StoreFrontsHelper_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsHelper_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontsHelper_Package_References."=";
   subtype StoreFrontsHelper_Access_Array_Access_Array is admin.taghelpers.StoreFrontsHelper_Package_References.StoreFrontsHelper_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.StoreFrontsHelper_Package_References."=";
   subtype StoreFrontsHelper_Access_Array_Access_Array_Access is admin.taghelpers.StoreFrontsHelper_Package_References.StoreFrontsHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontsHelper_Package_References."=";

   type StoreFrontsHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      portion : Portion_Access;
      commonPhoneStrings : CommonPhoneStrings_Access;
   end record;
   CLASS : Unbounded_String;
   TEXT : Unbounded_String;

   procedure Initialize (This : in out StoreFrontsHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreFrontsHelper_Access;
   function drop (This : in out StoreFrontsHelper) return Unbounded_String;
   function create (This : in out StoreFrontsHelper) return Unbounded_String;
   function restore (This : in out StoreFrontsHelper) return Unbounded_String;
   function backup (This : in out StoreFrontsHelper) return Unbounded_String;
   function generateSelect (This : in out StoreFrontsHelper) return Unbounded_String;

end admin.taghelpers.StoreFrontsHelper_Package;


