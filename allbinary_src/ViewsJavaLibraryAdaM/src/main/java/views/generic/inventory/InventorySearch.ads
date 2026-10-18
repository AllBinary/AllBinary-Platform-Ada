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
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package; use views.admin.inventory.listings.InventoryViewSearchInterface_Package;

package views.generic_Id.inventory.InventorySearch_Package is

   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package InventoryViewSearchInterface_Package renames Standard.views.admin.inventory.listings.InventoryViewSearchInterface_Package;

   type InventorySearch is tagged;
   type InventorySearch_Access is access all InventorySearch'Class;
   type InventorySearch_Access_Array is array (Natural range <>) of InventorySearch_Access;
   type InventorySearch_Access_Array_Access is access all InventorySearch_Access_Array;
   type InventorySearch_Access_Array_Access_Array is array (Natural range <>) of InventorySearch_Access_Array_Access;
   type InventorySearch_Access_Array_Access_Array_Access is access all InventorySearch_Access_Array_Access_Array;

   type InventorySearch is new Java_Object and InventoryViewSearchInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      basicItemData : BasicItemData_Access;
      searchRequest : SearchRequest_Access;
   end record;

   procedure Initialize (This : in out InventorySearch'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return InventorySearch_Access;
   function searchSingleStaticPage (This : in out InventorySearch) return Unbounded_String;
   function searchSingleDynamicPage (This : in out InventorySearch) return Unbounded_String;
   function search (This : in out InventorySearch) return Unbounded_String_Array_Access;
   function getProduct (This : in out InventorySearch; product : Unbounded_String) return Unbounded_String;
   procedure getProduct (This : in out InventorySearch; product : Unbounded_String);

end views.generic_Id.inventory.InventorySearch_Package;


