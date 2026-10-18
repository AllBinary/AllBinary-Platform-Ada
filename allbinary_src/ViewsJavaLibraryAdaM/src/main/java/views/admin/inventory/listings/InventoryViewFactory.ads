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
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package; use views.admin.inventory.listings.InventoryViewSearchInterface_Package;

package views.admin.inventory.listings.InventoryViewFactory_Package is

   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;

   type InventoryViewFactory is tagged;
   type InventoryViewFactory_Access is access all InventoryViewFactory'Class;
   type InventoryViewFactory_Access_Array is array (Natural range <>) of InventoryViewFactory_Access;
   type InventoryViewFactory_Access_Array_Access is access all InventoryViewFactory_Access_Array;
   type InventoryViewFactory_Access_Array_Access_Array is array (Natural range <>) of InventoryViewFactory_Access_Array_Access;
   type InventoryViewFactory_Access_Array_Access_Array_Access is access all InventoryViewFactory_Access_Array_Access_Array;

   type InventoryViewFactory is new Java_Object with null record;

   procedure Initialize (This : in out InventoryViewFactory'Class);
   function Create return InventoryViewFactory_Access;
   function getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return InventoryViewSearchInterface_Access;
   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);

end views.admin.inventory.listings.InventoryViewFactory_Package;


