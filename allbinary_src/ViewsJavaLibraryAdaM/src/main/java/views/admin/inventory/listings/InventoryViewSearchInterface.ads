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

package views.admin.inventory.listings.InventoryViewSearchInterface_Package is


   type InventoryViewSearchInterface is interface;
   type InventoryViewSearchInterface_Access is access all InventoryViewSearchInterface'Class;
   type InventoryViewSearchInterface_Access_Array is array (Natural range <>) of InventoryViewSearchInterface_Access;
   type InventoryViewSearchInterface_Access_Array_Access is access all InventoryViewSearchInterface_Access_Array;
   function searchSingleStaticPage (This : in out InventoryViewSearchInterface) return Unbounded_String is abstract;
   function searchSingleDynamicPage (This : in out InventoryViewSearchInterface) return Unbounded_String is abstract;
   function search (This : in out InventoryViewSearchInterface) return Unbounded_String_Array_Access is abstract;
   function getProduct (This : in out InventoryViewSearchInterface; product : Unbounded_String) return Unbounded_String is abstract;

end views.admin.inventory.listings.InventoryViewSearchInterface_Package;


