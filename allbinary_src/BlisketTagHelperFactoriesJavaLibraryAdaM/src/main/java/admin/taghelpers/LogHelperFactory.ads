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
limited with admin.taghelpers.LogHelperFactory_Package;
package admin.taghelpers.LogHelperFactory_Package_References is
   type LogHelperFactory_Access is access all admin.taghelpers.LogHelperFactory_Package.LogHelperFactory'Class;
   type LogHelperFactory_Access_Array is array (Natural range <>) of LogHelperFactory_Access;
   type LogHelperFactory_Access_Array_Access is access all LogHelperFactory_Access_Array;
   type LogHelperFactory_Access_Array_Access_Array is array (Natural range <>) of LogHelperFactory_Access_Array_Access;
   type LogHelperFactory_Access_Array_Access_Array_Access is access all LogHelperFactory_Access_Array_Access_Array;
   type LogHelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogHelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LogHelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogHelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogHelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogHelperFactory_Access_Array_Access is (if Value /= null and then Value.all in LogHelperFactory_Access_Array_Object'Class then LogHelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LogHelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogHelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogHelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogHelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogHelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogHelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogHelperFactory_Access_Array_Access_Array_Object'Class then LogHelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.LogHelperFactory_Package_References;

with admin.taghelpers.LogHelperFactory_Package_References;
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

package admin.taghelpers.LogHelperFactory_Package is

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


   subtype LogHelperFactory_Access is admin.taghelpers.LogHelperFactory_Package_References.LogHelperFactory_Access;
   function "=" (Left, Right : LogHelperFactory_Access) return Boolean renames admin.taghelpers.LogHelperFactory_Package_References."=";
   subtype LogHelperFactory_Access_Array is admin.taghelpers.LogHelperFactory_Package_References.LogHelperFactory_Access_Array;
   function "=" (Left, Right : LogHelperFactory_Access_Array) return Boolean renames admin.taghelpers.LogHelperFactory_Package_References."=";
   subtype LogHelperFactory_Access_Array_Access is admin.taghelpers.LogHelperFactory_Package_References.LogHelperFactory_Access_Array_Access;
   function "=" (Left, Right : LogHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.LogHelperFactory_Package_References."=";
   function Java_Box (Value : LogHelperFactory_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.LogHelperFactory_Package_References.Java_Box;
   function Java_Unbox_LogHelperFactory_Access_Array (Value : access Java_Object'Class) return LogHelperFactory_Access_Array_Access renames admin.taghelpers.LogHelperFactory_Package_References.Java_Unbox_LogHelperFactory_Access_Array;
   subtype LogHelperFactory_Access_Array_Access_Array is admin.taghelpers.LogHelperFactory_Package_References.LogHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LogHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.LogHelperFactory_Package_References."=";
   subtype LogHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.LogHelperFactory_Package_References.LogHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.LogHelperFactory_Package_References."=";
   function Java_Box (Value : LogHelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.LogHelperFactory_Package_References.Java_Box;
   function Java_Unbox_LogHelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LogHelperFactory_Access_Array_Access_Array_Access renames admin.taghelpers.LogHelperFactory_Package_References.Java_Unbox_LogHelperFactory_Access_Array_Access_Array;

   type LogHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out LogHelperFactory'Class);
   function Create return LogHelperFactory_Access;
   function getInstance (This : in out LogHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out LogHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end admin.taghelpers.LogHelperFactory_Package;


