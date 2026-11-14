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
limited with admin.taghelpers.CustomItemsRequestHelper_Package;
package admin.taghelpers.CustomItemsRequestHelper_Package_References is
   type CustomItemsRequestHelper_Access is access all admin.taghelpers.CustomItemsRequestHelper_Package.CustomItemsRequestHelper'Class;
   type CustomItemsRequestHelper_Access_Array is array (Natural range <>) of CustomItemsRequestHelper_Access;
   type CustomItemsRequestHelper_Access_Array_Access is access all CustomItemsRequestHelper_Access_Array;
   type CustomItemsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of CustomItemsRequestHelper_Access_Array_Access;
   type CustomItemsRequestHelper_Access_Array_Access_Array_Access is access all CustomItemsRequestHelper_Access_Array_Access_Array;
   type CustomItemsRequestHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomItemsRequestHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomItemsRequestHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomItemsRequestHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomItemsRequestHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomItemsRequestHelper_Access_Array_Access is (if Value /= null and then Value.all in CustomItemsRequestHelper_Access_Array_Object'Class then CustomItemsRequestHelper_Access_Array_Object'Class (Value.all).Value else null);
   type CustomItemsRequestHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomItemsRequestHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomItemsRequestHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomItemsRequestHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomItemsRequestHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomItemsRequestHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomItemsRequestHelper_Access_Array_Access_Array_Object'Class then CustomItemsRequestHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.CustomItemsRequestHelper_Package_References;

with admin.taghelpers.CustomItemsRequestHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.CustomItemsRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   use type BasicItemData_Access;
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   use type BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   use type BasicItemData_Access_Array_Access;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   use type BasicItemData_Access_Array_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   use type BasicItemData_Access_Array_Access_Array_Access;
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


   subtype CustomItemsRequestHelper_Access is admin.taghelpers.CustomItemsRequestHelper_Package_References.CustomItemsRequestHelper_Access;
   function "=" (Left, Right : CustomItemsRequestHelper_Access) return Boolean renames admin.taghelpers.CustomItemsRequestHelper_Package_References."=";
   subtype CustomItemsRequestHelper_Access_Array is admin.taghelpers.CustomItemsRequestHelper_Package_References.CustomItemsRequestHelper_Access_Array;
   function "=" (Left, Right : CustomItemsRequestHelper_Access_Array) return Boolean renames admin.taghelpers.CustomItemsRequestHelper_Package_References."=";
   subtype CustomItemsRequestHelper_Access_Array_Access is admin.taghelpers.CustomItemsRequestHelper_Package_References.CustomItemsRequestHelper_Access_Array_Access;
   function "=" (Left, Right : CustomItemsRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.CustomItemsRequestHelper_Package_References."=";
   function Java_Box (Value : CustomItemsRequestHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.CustomItemsRequestHelper_Package_References.Java_Box;
   function Java_Unbox_CustomItemsRequestHelper_Access_Array (Value : access Java_Object'Class) return CustomItemsRequestHelper_Access_Array_Access renames admin.taghelpers.CustomItemsRequestHelper_Package_References.Java_Unbox_CustomItemsRequestHelper_Access_Array;
   subtype CustomItemsRequestHelper_Access_Array_Access_Array is admin.taghelpers.CustomItemsRequestHelper_Package_References.CustomItemsRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : CustomItemsRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.CustomItemsRequestHelper_Package_References."=";
   subtype CustomItemsRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.CustomItemsRequestHelper_Package_References.CustomItemsRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomItemsRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.CustomItemsRequestHelper_Package_References."=";
   function Java_Box (Value : CustomItemsRequestHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.CustomItemsRequestHelper_Package_References.Java_Box;
   function Java_Unbox_CustomItemsRequestHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomItemsRequestHelper_Access_Array_Access_Array_Access renames admin.taghelpers.CustomItemsRequestHelper_Package_References.Java_Unbox_CustomItemsRequestHelper_Access_Array_Access_Array;

   type CustomItemsRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      className : Unbounded_String;
      packageName : Unbounded_String;
      timeEntered : Unbounded_String;
      lastModified : Unbounded_String;
   end record;

   procedure Initialize (This : in out CustomItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return CustomItemsRequestHelper_Access;
   procedure getFormData (This : in out CustomItemsRequestHelper);
   function getHashMap (This : in out CustomItemsRequestHelper) return HashMap_Access;
   function insert (This : in out CustomItemsRequestHelper) return Unbounded_String;
   function delete (This : in out CustomItemsRequestHelper) return Unbounded_String;
   function update (This : in out CustomItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.CustomItemsRequestHelper_Package;


