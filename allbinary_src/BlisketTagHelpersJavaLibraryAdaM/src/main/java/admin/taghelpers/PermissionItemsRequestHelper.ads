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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.PermissionItemsRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type PermissionItemsRequestHelper is tagged;
   type PermissionItemsRequestHelper_Access is access all PermissionItemsRequestHelper'Class;
   type PermissionItemsRequestHelper_Access_Array is array (Natural range <>) of PermissionItemsRequestHelper_Access;
   type PermissionItemsRequestHelper_Access_Array_Access is access all PermissionItemsRequestHelper_Access_Array;
   type PermissionItemsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of PermissionItemsRequestHelper_Access_Array_Access;
   type PermissionItemsRequestHelper_Access_Array_Access_Array_Access is access all PermissionItemsRequestHelper_Access_Array_Access_Array;

   type PermissionItemsRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      enabled : Unbounded_String;
      number : Unbounded_String;
      who : Unbounded_String;
      what : Unbounded_String;
      type_Id : Unbounded_String;
      remoteAddr : Unbounded_String;
      startTime : Unbounded_String;
      endTime : Unbounded_String;
      price : Unbounded_String;
      timeEntered : Unbounded_String;
      lastModified : Unbounded_String;
   end record;

   procedure Initialize (This : in out PermissionItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PermissionItemsRequestHelper_Access;
   procedure getFormData (This : in out PermissionItemsRequestHelper);
   function getHashMap (This : in out PermissionItemsRequestHelper) return HashMap_Access;
   function insert (This : in out PermissionItemsRequestHelper) return Unbounded_String;
   function delete (This : in out PermissionItemsRequestHelper) return Unbounded_String;
   function update (This : in out PermissionItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.PermissionItemsRequestHelper_Package;


