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
limited with admin.taghelpers.AdminConfigurationHelperFactory_Package;
package admin.taghelpers.AdminConfigurationHelperFactory_Package_References is
   type AdminConfigurationHelperFactory_Access is access all admin.taghelpers.AdminConfigurationHelperFactory_Package.AdminConfigurationHelperFactory'Class;
   type AdminConfigurationHelperFactory_Access_Array is array (Natural range <>) of AdminConfigurationHelperFactory_Access;
   type AdminConfigurationHelperFactory_Access_Array_Access is access all AdminConfigurationHelperFactory_Access_Array;
   type AdminConfigurationHelperFactory_Access_Array_Access_Array is array (Natural range <>) of AdminConfigurationHelperFactory_Access_Array_Access;
   type AdminConfigurationHelperFactory_Access_Array_Access_Array_Access is access all AdminConfigurationHelperFactory_Access_Array_Access_Array;
   type AdminConfigurationHelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdminConfigurationHelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AdminConfigurationHelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdminConfigurationHelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdminConfigurationHelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdminConfigurationHelperFactory_Access_Array_Access is (if Value /= null and then Value.all in AdminConfigurationHelperFactory_Access_Array_Object'Class then AdminConfigurationHelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AdminConfigurationHelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdminConfigurationHelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdminConfigurationHelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdminConfigurationHelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdminConfigurationHelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdminConfigurationHelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdminConfigurationHelperFactory_Access_Array_Access_Array_Object'Class then AdminConfigurationHelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.AdminConfigurationHelperFactory_Package_References;

with admin.taghelpers.AdminConfigurationHelperFactory_Package_References;
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
with admin.taghelpers.TagHelperFactory_Package; use admin.taghelpers.TagHelperFactory_Package;

package admin.taghelpers.AdminConfigurationHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AdminConfigurationHelperFactory_Access is admin.taghelpers.AdminConfigurationHelperFactory_Package_References.AdminConfigurationHelperFactory_Access;
   function "=" (Left, Right : AdminConfigurationHelperFactory_Access) return Boolean renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References."=";
   subtype AdminConfigurationHelperFactory_Access_Array is admin.taghelpers.AdminConfigurationHelperFactory_Package_References.AdminConfigurationHelperFactory_Access_Array;
   function "=" (Left, Right : AdminConfigurationHelperFactory_Access_Array) return Boolean renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References."=";
   subtype AdminConfigurationHelperFactory_Access_Array_Access is admin.taghelpers.AdminConfigurationHelperFactory_Package_References.AdminConfigurationHelperFactory_Access_Array_Access;
   function "=" (Left, Right : AdminConfigurationHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References."=";
   function Java_Box (Value : AdminConfigurationHelperFactory_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References.Java_Box;
   function Java_Unbox_AdminConfigurationHelperFactory_Access_Array (Value : access Java_Object'Class) return AdminConfigurationHelperFactory_Access_Array_Access renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References.Java_Unbox_AdminConfigurationHelperFactory_Access_Array;
   subtype AdminConfigurationHelperFactory_Access_Array_Access_Array is admin.taghelpers.AdminConfigurationHelperFactory_Package_References.AdminConfigurationHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AdminConfigurationHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References."=";
   subtype AdminConfigurationHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.AdminConfigurationHelperFactory_Package_References.AdminConfigurationHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdminConfigurationHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References."=";
   function Java_Box (Value : AdminConfigurationHelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References.Java_Box;
   function Java_Unbox_AdminConfigurationHelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AdminConfigurationHelperFactory_Access_Array_Access_Array_Access renames admin.taghelpers.AdminConfigurationHelperFactory_Package_References.Java_Unbox_AdminConfigurationHelperFactory_Access_Array_Access_Array;

   type AdminConfigurationHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AdminConfigurationHelperFactory'Class);
   function Create return AdminConfigurationHelperFactory_Access;
   function getInstance (This : in out AdminConfigurationHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out AdminConfigurationHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.AdminConfigurationHelperFactory_Package;


