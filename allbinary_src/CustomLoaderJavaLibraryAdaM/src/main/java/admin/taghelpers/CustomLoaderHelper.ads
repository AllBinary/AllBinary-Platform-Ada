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

limited with admin.taghelpers.CustomLoaderHelper_Package;
package admin.taghelpers.CustomLoaderHelper_Package_References is
   type CustomLoaderHelper_Access is access all admin.taghelpers.CustomLoaderHelper_Package.CustomLoaderHelper'Class;
   type CustomLoaderHelper_Access_Array is array (Natural range <>) of CustomLoaderHelper_Access;
   type CustomLoaderHelper_Access_Array_Access is access all CustomLoaderHelper_Access_Array;
   type CustomLoaderHelper_Access_Array_Access_Array is array (Natural range <>) of CustomLoaderHelper_Access_Array_Access;
   type CustomLoaderHelper_Access_Array_Access_Array_Access is access all CustomLoaderHelper_Access_Array_Access_Array;
end admin.taghelpers.CustomLoaderHelper_Package_References;

with admin.taghelpers.CustomLoaderHelper_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package admin.taghelpers.CustomLoaderHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype CustomLoaderHelper_Access is admin.taghelpers.CustomLoaderHelper_Package_References.CustomLoaderHelper_Access;
   function "=" (Left, Right : CustomLoaderHelper_Access) return Boolean renames admin.taghelpers.CustomLoaderHelper_Package_References."=";
   subtype CustomLoaderHelper_Access_Array is admin.taghelpers.CustomLoaderHelper_Package_References.CustomLoaderHelper_Access_Array;
   function "=" (Left, Right : CustomLoaderHelper_Access_Array) return Boolean renames admin.taghelpers.CustomLoaderHelper_Package_References."=";
   subtype CustomLoaderHelper_Access_Array_Access is admin.taghelpers.CustomLoaderHelper_Package_References.CustomLoaderHelper_Access_Array_Access;
   function "=" (Left, Right : CustomLoaderHelper_Access_Array_Access) return Boolean renames admin.taghelpers.CustomLoaderHelper_Package_References."=";
   subtype CustomLoaderHelper_Access_Array_Access_Array is admin.taghelpers.CustomLoaderHelper_Package_References.CustomLoaderHelper_Access_Array_Access_Array;
   function "=" (Left, Right : CustomLoaderHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.CustomLoaderHelper_Package_References."=";
   subtype CustomLoaderHelper_Access_Array_Access_Array_Access is admin.taghelpers.CustomLoaderHelper_Package_References.CustomLoaderHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomLoaderHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.CustomLoaderHelper_Package_References."=";

   type CustomLoaderHelper is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out CustomLoaderHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return CustomLoaderHelper_Access;
   procedure Initialize (This : in out CustomLoaderHelper'Class);
   function Create return CustomLoaderHelper_Access;
   function getWebappPath (This : in out CustomLoaderHelper) return Unbounded_String;
   procedure setWebappPath (This : in out CustomLoaderHelper; path : Unbounded_String);

end admin.taghelpers.CustomLoaderHelper_Package;


