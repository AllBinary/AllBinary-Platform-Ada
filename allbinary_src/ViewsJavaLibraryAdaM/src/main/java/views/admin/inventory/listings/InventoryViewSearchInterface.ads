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

limited with views.admin.inventory.listings.InventoryViewSearchInterface_Package;
package views.admin.inventory.listings.InventoryViewSearchInterface_Package_References is
   type InventoryViewSearchInterface_Access is access all views.admin.inventory.listings.InventoryViewSearchInterface_Package.InventoryViewSearchInterface'Class;
   type InventoryViewSearchInterface_Access_Array is array (Natural range <>) of InventoryViewSearchInterface_Access;
   type InventoryViewSearchInterface_Access_Array_Access is access all InventoryViewSearchInterface_Access_Array;
   type InventoryViewSearchInterface_Access_Array_Access_Array is array (Natural range <>) of InventoryViewSearchInterface_Access_Array_Access;
   type InventoryViewSearchInterface_Access_Array_Access_Array_Access is access all InventoryViewSearchInterface_Access_Array_Access_Array;
end views.admin.inventory.listings.InventoryViewSearchInterface_Package_References;

with views.admin.inventory.listings.InventoryViewSearchInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package views.admin.inventory.listings.InventoryViewSearchInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type InventoryViewSearchInterface is interface;
   subtype InventoryViewSearchInterface_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access;
   function "=" (Left, Right : InventoryViewSearchInterface_Access) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array_Access) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array_Access_Array is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array_Access_Array) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   subtype InventoryViewSearchInterface_Access_Array_Access_Array_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryViewSearchInterface_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.listings.InventoryViewSearchInterface_Package_References."=";
   function Java_Object_Access_From_InventoryViewSearchInterface (Value : InventoryViewSearchInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function searchSingleStaticPage (This : in out InventoryViewSearchInterface) return Unbounded_String is abstract;
   function searchSingleDynamicPage (This : in out InventoryViewSearchInterface) return Unbounded_String is abstract;
   function search (This : in out InventoryViewSearchInterface) return Unbounded_String_Array_Access is abstract;
   function getProduct (This : in out InventoryViewSearchInterface; product : Unbounded_String) return Unbounded_String is abstract;

end views.admin.inventory.listings.InventoryViewSearchInterface_Package;


