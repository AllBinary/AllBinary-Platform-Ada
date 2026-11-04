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

limited with admin.taghelpers.SpecialItemsRequestHelper_Package;
package admin.taghelpers.SpecialItemsRequestHelper_Package_References is
   type SpecialItemsRequestHelper_Access is access all admin.taghelpers.SpecialItemsRequestHelper_Package.SpecialItemsRequestHelper'Class;
   type SpecialItemsRequestHelper_Access_Array is array (Natural range <>) of SpecialItemsRequestHelper_Access;
   type SpecialItemsRequestHelper_Access_Array_Access is access all SpecialItemsRequestHelper_Access_Array;
   type SpecialItemsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of SpecialItemsRequestHelper_Access_Array_Access;
   type SpecialItemsRequestHelper_Access_Array_Access_Array_Access is access all SpecialItemsRequestHelper_Access_Array_Access_Array;
end admin.taghelpers.SpecialItemsRequestHelper_Package_References;

with admin.taghelpers.SpecialItemsRequestHelper_Package_References;
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

package admin.taghelpers.SpecialItemsRequestHelper_Package is

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


   subtype SpecialItemsRequestHelper_Access is admin.taghelpers.SpecialItemsRequestHelper_Package_References.SpecialItemsRequestHelper_Access;
   function "=" (Left, Right : SpecialItemsRequestHelper_Access) return Boolean renames admin.taghelpers.SpecialItemsRequestHelper_Package_References."=";
   subtype SpecialItemsRequestHelper_Access_Array is admin.taghelpers.SpecialItemsRequestHelper_Package_References.SpecialItemsRequestHelper_Access_Array;
   function "=" (Left, Right : SpecialItemsRequestHelper_Access_Array) return Boolean renames admin.taghelpers.SpecialItemsRequestHelper_Package_References."=";
   subtype SpecialItemsRequestHelper_Access_Array_Access is admin.taghelpers.SpecialItemsRequestHelper_Package_References.SpecialItemsRequestHelper_Access_Array_Access;
   function "=" (Left, Right : SpecialItemsRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.SpecialItemsRequestHelper_Package_References."=";
   subtype SpecialItemsRequestHelper_Access_Array_Access_Array is admin.taghelpers.SpecialItemsRequestHelper_Package_References.SpecialItemsRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialItemsRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.SpecialItemsRequestHelper_Package_References."=";
   subtype SpecialItemsRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.SpecialItemsRequestHelper_Package_References.SpecialItemsRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialItemsRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.SpecialItemsRequestHelper_Package_References."=";

   type SpecialItemsRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      enabled : Unbounded_String;
      number : Unbounded_String;
      startTime : Unbounded_String;
      endTime : Unbounded_String;
      price : Unbounded_String;
      timeEntered : Unbounded_String;
      lastModified : Unbounded_String;
   end record;

   procedure Initialize (This : in out SpecialItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return SpecialItemsRequestHelper_Access;
   procedure getFormData (This : in out SpecialItemsRequestHelper);
   function getHashMap (This : in out SpecialItemsRequestHelper) return HashMap_Access;
   function insert (This : in out SpecialItemsRequestHelper) return Unbounded_String;
   function delete (This : in out SpecialItemsRequestHelper) return Unbounded_String;
   function update (This : in out SpecialItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.SpecialItemsRequestHelper_Package;


