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

package admin.taghelpers.CustomItemsRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type CustomItemsRequestHelper is tagged;
   type CustomItemsRequestHelper_Access is access all CustomItemsRequestHelper'Class;
   type CustomItemsRequestHelper_Access_Array is array (Natural range <>) of CustomItemsRequestHelper_Access;
   type CustomItemsRequestHelper_Access_Array_Access is access all CustomItemsRequestHelper_Access_Array;
   type CustomItemsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of CustomItemsRequestHelper_Access_Array_Access;
   type CustomItemsRequestHelper_Access_Array_Access_Array_Access is access all CustomItemsRequestHelper_Access_Array_Access_Array;

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


