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

limited with views.generic_Id.inventory.InventorySearchLoopInfo_Package;
package views.generic_Id.inventory.InventorySearchLoopInfo_Package_References is
   type InventorySearchLoopInfo_Access is access all views.generic_Id.inventory.InventorySearchLoopInfo_Package.InventorySearchLoopInfo'Class;
   type InventorySearchLoopInfo_Access_Array is array (Natural range <>) of InventorySearchLoopInfo_Access;
   type InventorySearchLoopInfo_Access_Array_Access is access all InventorySearchLoopInfo_Access_Array;
   type InventorySearchLoopInfo_Access_Array_Access_Array is array (Natural range <>) of InventorySearchLoopInfo_Access_Array_Access;
   type InventorySearchLoopInfo_Access_Array_Access_Array_Access is access all InventorySearchLoopInfo_Access_Array_Access_Array;
end views.generic_Id.inventory.InventorySearchLoopInfo_Package_References;

with views.generic_Id.inventory.InventorySearchLoopInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package views.generic_Id.inventory.InventorySearchLoopInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InventorySearchLoopInfo_Access is views.generic_Id.inventory.InventorySearchLoopInfo_Package_References.InventorySearchLoopInfo_Access;
   function "=" (Left, Right : InventorySearchLoopInfo_Access) return Boolean renames views.generic_Id.inventory.InventorySearchLoopInfo_Package_References."=";
   subtype InventorySearchLoopInfo_Access_Array is views.generic_Id.inventory.InventorySearchLoopInfo_Package_References.InventorySearchLoopInfo_Access_Array;
   function "=" (Left, Right : InventorySearchLoopInfo_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearchLoopInfo_Package_References."=";
   subtype InventorySearchLoopInfo_Access_Array_Access is views.generic_Id.inventory.InventorySearchLoopInfo_Package_References.InventorySearchLoopInfo_Access_Array_Access;
   function "=" (Left, Right : InventorySearchLoopInfo_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearchLoopInfo_Package_References."=";
   subtype InventorySearchLoopInfo_Access_Array_Access_Array is views.generic_Id.inventory.InventorySearchLoopInfo_Package_References.InventorySearchLoopInfo_Access_Array_Access_Array;
   function "=" (Left, Right : InventorySearchLoopInfo_Access_Array_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearchLoopInfo_Package_References."=";
   subtype InventorySearchLoopInfo_Access_Array_Access_Array_Access is views.generic_Id.inventory.InventorySearchLoopInfo_Package_References.InventorySearchLoopInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventorySearchLoopInfo_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearchLoopInfo_Package_References."=";

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

end views.generic_Id.inventory.InventorySearchLoopInfo_Package;


