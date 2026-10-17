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
with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package; use org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.BasicGroupItemsRequestHelper_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package BasicGroupItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package;
   package BasicGroupItemsEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type BasicGroupItemsRequestHelper is tagged;
   type BasicGroupItemsRequestHelper_Access is access all BasicGroupItemsRequestHelper'Class;
   type BasicGroupItemsRequestHelper_Access_Array is array (Natural range <>) of BasicGroupItemsRequestHelper_Access;
   type BasicGroupItemsRequestHelper_Access_Array_Access is access all BasicGroupItemsRequestHelper_Access_Array;

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

   procedure Initialize (This : in out BasicGroupItemsRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return BasicGroupItemsRequestHelper_Access;
   procedure getFormData (This : in out BasicGroupItemsRequestHelper);
   function getHashMap (This : in out BasicGroupItemsRequestHelper) return HashMap_Access;
   function insert (This : in out BasicGroupItemsRequestHelper) return Unbounded_String;
   function delete (This : in out BasicGroupItemsRequestHelper) return Unbounded_String;
   function update (This : in out BasicGroupItemsRequestHelper) return Unbounded_String;

end admin.taghelpers.BasicGroupItemsRequestHelper_Package;


