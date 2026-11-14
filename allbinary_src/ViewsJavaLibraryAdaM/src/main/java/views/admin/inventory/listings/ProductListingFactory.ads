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

with AllBinary_Java;
limited with views.admin.inventory.listings.ProductListingFactory_Package;
package views.admin.inventory.listings.ProductListingFactory_Package_References is
   type ProductListingFactory_Access is access all views.admin.inventory.listings.ProductListingFactory_Package.ProductListingFactory'Class;
   type ProductListingFactory_Access_Array is array (Natural range <>) of ProductListingFactory_Access;
   type ProductListingFactory_Access_Array_Access is access all ProductListingFactory_Access_Array;
   type ProductListingFactory_Access_Array_Access_Array is array (Natural range <>) of ProductListingFactory_Access_Array_Access;
   type ProductListingFactory_Access_Array_Access_Array_Access is access all ProductListingFactory_Access_Array_Access_Array;
   type ProductListingFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProductListingFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ProductListingFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProductListingFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProductListingFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProductListingFactory_Access_Array_Access is (if Value /= null and then Value.all in ProductListingFactory_Access_Array_Object'Class then ProductListingFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ProductListingFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProductListingFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProductListingFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProductListingFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProductListingFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProductListingFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProductListingFactory_Access_Array_Access_Array_Object'Class then ProductListingFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.admin.inventory.listings.ProductListingFactory_Package_References;

with views.admin.inventory.listings.ProductListingFactory_Package_References;
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
limited with views.admin.inventory.listings.ProductListingInterface_Package;
with views.admin.inventory.listings.ProductListingInterface_Package_References;

package views.admin.inventory.listings.ProductListingFactory_Package is

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
   subtype ProductListingInterface_Access is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access;
   use type ProductListingInterface_Access;
   subtype ProductListingInterface_Access_Array is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array;
   use type ProductListingInterface_Access_Array;
   subtype ProductListingInterface_Access_Array_Access is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array_Access;
   use type ProductListingInterface_Access_Array_Access;
   subtype ProductListingInterface_Access_Array_Access_Array is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array_Access_Array;
   use type ProductListingInterface_Access_Array_Access_Array;
   subtype ProductListingInterface_Access_Array_Access_Array_Access is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array_Access_Array_Access;
   use type ProductListingInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProductListingFactory_Access is views.admin.inventory.listings.ProductListingFactory_Package_References.ProductListingFactory_Access;
   function "=" (Left, Right : ProductListingFactory_Access) return Boolean renames views.admin.inventory.listings.ProductListingFactory_Package_References."=";
   subtype ProductListingFactory_Access_Array is views.admin.inventory.listings.ProductListingFactory_Package_References.ProductListingFactory_Access_Array;
   function "=" (Left, Right : ProductListingFactory_Access_Array) return Boolean renames views.admin.inventory.listings.ProductListingFactory_Package_References."=";
   subtype ProductListingFactory_Access_Array_Access is views.admin.inventory.listings.ProductListingFactory_Package_References.ProductListingFactory_Access_Array_Access;
   function "=" (Left, Right : ProductListingFactory_Access_Array_Access) return Boolean renames views.admin.inventory.listings.ProductListingFactory_Package_References."=";
   function Java_Box (Value : ProductListingFactory_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.listings.ProductListingFactory_Package_References.Java_Box;
   function Java_Unbox_ProductListingFactory_Access_Array (Value : access Java_Object'Class) return ProductListingFactory_Access_Array_Access renames views.admin.inventory.listings.ProductListingFactory_Package_References.Java_Unbox_ProductListingFactory_Access_Array;
   subtype ProductListingFactory_Access_Array_Access_Array is views.admin.inventory.listings.ProductListingFactory_Package_References.ProductListingFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ProductListingFactory_Access_Array_Access_Array) return Boolean renames views.admin.inventory.listings.ProductListingFactory_Package_References."=";
   subtype ProductListingFactory_Access_Array_Access_Array_Access is views.admin.inventory.listings.ProductListingFactory_Package_References.ProductListingFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProductListingFactory_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.listings.ProductListingFactory_Package_References."=";
   function Java_Box (Value : ProductListingFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.listings.ProductListingFactory_Package_References.Java_Box;
   function Java_Unbox_ProductListingFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ProductListingFactory_Access_Array_Access_Array_Access renames views.admin.inventory.listings.ProductListingFactory_Package_References.Java_Unbox_ProductListingFactory_Access_Array_Access_Array;

   type ProductListingFactory is new Java_Object with null record;

   procedure Initialize (This : in out ProductListingFactory'Class);
   function Create return ProductListingFactory_Access;
   function getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return ProductListingInterface_Access;
   procedure getInstance (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);

end views.admin.inventory.listings.ProductListingFactory_Package;


