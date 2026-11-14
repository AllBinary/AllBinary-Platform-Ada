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
limited with admin.taghelpers.BasicGroupItemsHelper_Package;
package admin.taghelpers.BasicGroupItemsHelper_Package_References is
   type BasicGroupItemsHelper_Access is access all admin.taghelpers.BasicGroupItemsHelper_Package.BasicGroupItemsHelper'Class;
   type BasicGroupItemsHelper_Access_Array is array (Natural range <>) of BasicGroupItemsHelper_Access;
   type BasicGroupItemsHelper_Access_Array_Access is access all BasicGroupItemsHelper_Access_Array;
   type BasicGroupItemsHelper_Access_Array_Access_Array is array (Natural range <>) of BasicGroupItemsHelper_Access_Array_Access;
   type BasicGroupItemsHelper_Access_Array_Access_Array_Access is access all BasicGroupItemsHelper_Access_Array_Access_Array;
   type BasicGroupItemsHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGroupItemsHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGroupItemsHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGroupItemsHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGroupItemsHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGroupItemsHelper_Access_Array_Access is (if Value /= null and then Value.all in BasicGroupItemsHelper_Access_Array_Object'Class then BasicGroupItemsHelper_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGroupItemsHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGroupItemsHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGroupItemsHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGroupItemsHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGroupItemsHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGroupItemsHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGroupItemsHelper_Access_Array_Access_Array_Object'Class then BasicGroupItemsHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.BasicGroupItemsHelper_Package_References;

with admin.taghelpers.BasicGroupItemsHelper_Package_References;
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
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.BasicGroupItemsHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicGroupItemsHelper_Access is admin.taghelpers.BasicGroupItemsHelper_Package_References.BasicGroupItemsHelper_Access;
   function "=" (Left, Right : BasicGroupItemsHelper_Access) return Boolean renames admin.taghelpers.BasicGroupItemsHelper_Package_References."=";
   subtype BasicGroupItemsHelper_Access_Array is admin.taghelpers.BasicGroupItemsHelper_Package_References.BasicGroupItemsHelper_Access_Array;
   function "=" (Left, Right : BasicGroupItemsHelper_Access_Array) return Boolean renames admin.taghelpers.BasicGroupItemsHelper_Package_References."=";
   subtype BasicGroupItemsHelper_Access_Array_Access is admin.taghelpers.BasicGroupItemsHelper_Package_References.BasicGroupItemsHelper_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsHelper_Access_Array_Access) return Boolean renames admin.taghelpers.BasicGroupItemsHelper_Package_References."=";
   function Java_Box (Value : BasicGroupItemsHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.BasicGroupItemsHelper_Package_References.Java_Box;
   function Java_Unbox_BasicGroupItemsHelper_Access_Array (Value : access Java_Object'Class) return BasicGroupItemsHelper_Access_Array_Access renames admin.taghelpers.BasicGroupItemsHelper_Package_References.Java_Unbox_BasicGroupItemsHelper_Access_Array;
   subtype BasicGroupItemsHelper_Access_Array_Access_Array is admin.taghelpers.BasicGroupItemsHelper_Package_References.BasicGroupItemsHelper_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGroupItemsHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BasicGroupItemsHelper_Package_References."=";
   subtype BasicGroupItemsHelper_Access_Array_Access_Array_Access is admin.taghelpers.BasicGroupItemsHelper_Package_References.BasicGroupItemsHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BasicGroupItemsHelper_Package_References."=";
   function Java_Box (Value : BasicGroupItemsHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.BasicGroupItemsHelper_Package_References.Java_Box;
   function Java_Unbox_BasicGroupItemsHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGroupItemsHelper_Access_Array_Access_Array_Access renames admin.taghelpers.BasicGroupItemsHelper_Package_References.Java_Unbox_BasicGroupItemsHelper_Access_Array_Access_Array;

   type BasicGroupItemsHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out BasicGroupItemsHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicGroupItemsHelper_Access;
   function create (This : in out BasicGroupItemsHelper) return Unbounded_String;
   function drop (This : in out BasicGroupItemsHelper) return Unbounded_String;
   function restore (This : in out BasicGroupItemsHelper) return Unbounded_String;
   function backup (This : in out BasicGroupItemsHelper) return Unbounded_String;

end admin.taghelpers.BasicGroupItemsHelper_Package;


