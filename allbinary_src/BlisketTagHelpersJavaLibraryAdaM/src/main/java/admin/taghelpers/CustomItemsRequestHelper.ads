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
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package; use org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.CustomItemsRequestHelper_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package DynamicObjectData_Package renames org.allbinary.business.DynamicObjectData_Package;
   package EntryData_Package renames org.allbinary.business.entry_Id.EntryData_Package;
   package BasicItemData_Package renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package CustomItemData_Package renames org.allbinary.business.user.commerce.inventory.item.custom.CustomItemData_Package;
   package CustomItemsEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.item.customs.CustomItemsEntityFactory_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type CustomItemsRequestHelper is tagged;
   type CustomItemsRequestHelper_Access is access all CustomItemsRequestHelper'Class;
   type CustomItemsRequestHelper_Access_Array is array (Natural range <>) of CustomItemsRequestHelper_Access;
   type CustomItemsRequestHelper_Access_Array_Access is access all CustomItemsRequestHelper_Access_Array;

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

   procedure Initialize (This : in out CustomItemsRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return CustomItemsRequestHelper_Access;
   procedure getFormData (This : in out CustomItemsRequestHelper);
   function getHashMap (This : in out CustomItemsRequestHelper) return HashMap_Access;
   procedure getHashMap (This : in out CustomItemsRequestHelper);
   function insert (This : in out CustomItemsRequestHelper) return Unbounded_String;
   procedure insert (This : in out CustomItemsRequestHelper);
   function delete (This : in out CustomItemsRequestHelper) return Unbounded_String;
   procedure delete (This : in out CustomItemsRequestHelper);
   function update (This : in out CustomItemsRequestHelper) return Unbounded_String;
   procedure update (This : in out CustomItemsRequestHelper);

end admin.taghelpers.CustomItemsRequestHelper_Package;


