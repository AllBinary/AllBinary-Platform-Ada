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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package views.generic_Id.inventory.InventorySearchLoopInfo_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type InventorySearchLoopInfo is tagged;
   type InventorySearchLoopInfo_Access is access all InventorySearchLoopInfo'Class;
   type InventorySearchLoopInfo_Access_Array is array (Natural range <>) of InventorySearchLoopInfo_Access;
   type InventorySearchLoopInfo_Access_Array_Access is access all InventorySearchLoopInfo_Access_Array;

   type InventorySearchLoopInfo is new Java_Object with record
      lastPage : Integer;
      currentPage : Integer;
      numberOfResultsOnCurrentPage : Integer;
      numberOfResults : Integer;
      CURRENT : Unbounded_String;
      NUM : Unbounded_String;
      LAST : Unbounded_String;
   end record;

   procedure Initialize (This : in out InventorySearchLoopInfo'Class);
   function Create return InventorySearchLoopInfo_Access;
   function toString (This : in out InventorySearchLoopInfo) return Unbounded_String;
   procedure toString (This : in out InventorySearchLoopInfo);

end views.generic_Id.inventory.InventorySearchLoopInfo_Package;


