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

limited with views.admin.inventory.listings.InventoryViewFactory_Package;
package views.admin.inventory.listings.InventoryViewFactory_Package_References is
   type InventoryViewFactory_Access is access all views.admin.inventory.listings.InventoryViewFactory_Package.InventoryViewFactory'Class;
   type InventoryViewFactory_Access_Array is array (Natural range <>) of InventoryViewFactory_Access;
   type InventoryViewFactory_Access_Array_Access is access all InventoryViewFactory_Access_Array;
   type InventoryViewFactory_Access_Array_Access_Array is array (Natural range <>) of InventoryViewFactory_Access_Array_Access;
   type InventoryViewFactory_Access_Array_Access_Array_Access is access all InventoryViewFactory_Access_Array_Access_Array;
end views.admin.inventory.listings.InventoryViewFactory_Package_References;

with views.admin.inventory.listings.InventoryViewFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with views.admin.inventory.listings.InventoryViewSearchInterface_Package;
with views.admin.inventory.listings.InventoryViewSearchInterface_Package_References;

package views.admin.inventory.listings.InventoryViewFactory_Package is

   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package Reference_Types is
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   use type SearchRequest_Access;
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   use type SearchRequest_Access_Array;
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   use type SearchRequest_Access_Array_Access;
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   use type SearchRequest_Access_Array_Access_Array;
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   use type SearchRequest_Access_Array_Access_Array_Access;
   subtype InventoryViewSearchInterface_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access;
   use type InventoryViewSearchInterface_Access;
   subtype InventoryViewSearchInterface_Access_Array is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array;
   use type InventoryViewSearchInterface_Access_Array;
   subtype InventoryViewSearchInterface_Access_Array_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access;
   use type InventoryViewSearchInterface_Access_Array_Access;
   subtype InventoryViewSearchInterface_Access_Array_Access_Array is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access_Array;
   use type InventoryViewSearchInterface_Access_Array_Access_Array;
   subtype InventoryViewSearchInterface_Access_Array_Access_Array_Access is views.admin.inventory.listings.InventoryViewSearchInterface_Package_References.InventoryViewSearchInterface_Access_Array_Access_Array_Access;
   use type InventoryViewSearchInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InventoryViewFactory_Access is views.admin.inventory.listings.InventoryViewFactory_Package_References.InventoryViewFactory_Access;
   function "=" (Left, Right : InventoryViewFactory_Access) return Boolean renames views.admin.inventory.listings.InventoryViewFactory_Package_References."=";
   subtype InventoryViewFactory_Access_Array is views.admin.inventory.listings.InventoryViewFactory_Package_References.InventoryViewFactory_Access_Array;
   function "=" (Left, Right : InventoryViewFactory_Access_Array) return Boolean renames views.admin.inventory.listings.InventoryViewFactory_Package_References."=";
   subtype InventoryViewFactory_Access_Array_Access is views.admin.inventory.listings.InventoryViewFactory_Package_References.InventoryViewFactory_Access_Array_Access;
   function "=" (Left, Right : InventoryViewFactory_Access_Array_Access) return Boolean renames views.admin.inventory.listings.InventoryViewFactory_Package_References."=";
   subtype InventoryViewFactory_Access_Array_Access_Array is views.admin.inventory.listings.InventoryViewFactory_Package_References.InventoryViewFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryViewFactory_Access_Array_Access_Array) return Boolean renames views.admin.inventory.listings.InventoryViewFactory_Package_References."=";
   subtype InventoryViewFactory_Access_Array_Access_Array_Access is views.admin.inventory.listings.InventoryViewFactory_Package_References.InventoryViewFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryViewFactory_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.listings.InventoryViewFactory_Package_References."=";

   type InventoryViewFactory is new Java_Object with null record;

   procedure Initialize (This : in out InventoryViewFactory'Class);
   function Create return InventoryViewFactory_Access;
   function getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return InventoryViewSearchInterface_Access;
   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);

end views.admin.inventory.listings.InventoryViewFactory_Package;


