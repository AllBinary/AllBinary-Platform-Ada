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

limited with admin.taghelpers.BasicGroupItemsRequestHelper_Package;
package admin.taghelpers.BasicGroupItemsRequestHelper_Package_References is
   type BasicGroupItemsRequestHelper_Access is access all admin.taghelpers.BasicGroupItemsRequestHelper_Package.BasicGroupItemsRequestHelper'Class;
   type BasicGroupItemsRequestHelper_Access_Array is array (Natural range <>) of BasicGroupItemsRequestHelper_Access;
   type BasicGroupItemsRequestHelper_Access_Array_Access is access all BasicGroupItemsRequestHelper_Access_Array;
   type BasicGroupItemsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of BasicGroupItemsRequestHelper_Access_Array_Access;
   type BasicGroupItemsRequestHelper_Access_Array_Access_Array_Access is access all BasicGroupItemsRequestHelper_Access_Array_Access_Array;
end admin.taghelpers.BasicGroupItemsRequestHelper_Package_References;

with admin.taghelpers.BasicGroupItemsRequestHelper_Package_References;
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

package admin.taghelpers.BasicGroupItemsRequestHelper_Package is

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


   subtype BasicGroupItemsRequestHelper_Access is admin.taghelpers.BasicGroupItemsRequestHelper_Package_References.BasicGroupItemsRequestHelper_Access;
   function "=" (Left, Right : BasicGroupItemsRequestHelper_Access) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelper_Package_References."=";
   subtype BasicGroupItemsRequestHelper_Access_Array is admin.taghelpers.BasicGroupItemsRequestHelper_Package_References.BasicGroupItemsRequestHelper_Access_Array;
   function "=" (Left, Right : BasicGroupItemsRequestHelper_Access_Array) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelper_Package_References."=";
   subtype BasicGroupItemsRequestHelper_Access_Array_Access is admin.taghelpers.BasicGroupItemsRequestHelper_Package_References.BasicGroupItemsRequestHelper_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelper_Package_References."=";
   subtype BasicGroupItemsRequestHelper_Access_Array_Access_Array is admin.taghelpers.BasicGroupItemsRequestHelper_Package_References.BasicGroupItemsRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGroupItemsRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelper_Package_References."=";
   subtype BasicGroupItemsRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.BasicGroupItemsRequestHelper_Package_References.BasicGroupItemsRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BasicGroupItemsRequestHelper_Package_References."=";

   type BasicGroupItemsRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      itemOne : Unbounded_String;
      itemTwo : Unbounded_String;
      itemThree : Unbounded_String;
      itemFour : Unbounded_String;
      itemFive : Unbounded_String;
      itemSix : Unbounded_String;
      itemSeven : Unbounded_String;
      itemEight : Unbounded_String;
      itemNine : Unbounded_String;
      itemTen : Unbounded_String;
      timeEntered : Unbounded_String;
      lastModified : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicGroupItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicGroupItemsRequestHelper_Access;
   procedure getFormData (This : in out BasicGroupItemsRequestHelper);
   function getHashMap (This : in out BasicGroupItemsRequestHelper) return HashMap_Access;
   function insert (This : in out BasicGroupItemsRequestHelper) return Unbounded_String;
   function delete (This : in out BasicGroupItemsRequestHelper) return Unbounded_String;
   function update (This : in out BasicGroupItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.BasicGroupItemsRequestHelper_Package;


