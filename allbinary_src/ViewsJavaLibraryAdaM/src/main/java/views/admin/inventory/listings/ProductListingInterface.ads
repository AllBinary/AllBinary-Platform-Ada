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
limited with views.admin.inventory.listings.ProductListingInterface_Package;
package views.admin.inventory.listings.ProductListingInterface_Package_References is
   type ProductListingInterface_Access is access all views.admin.inventory.listings.ProductListingInterface_Package.ProductListingInterface'Class;
   type ProductListingInterface_Access_Array is array (Natural range <>) of ProductListingInterface_Access;
   type ProductListingInterface_Access_Array_Access is access all ProductListingInterface_Access_Array;
   type ProductListingInterface_Access_Array_Access_Array is array (Natural range <>) of ProductListingInterface_Access_Array_Access;
   type ProductListingInterface_Access_Array_Access_Array_Access is access all ProductListingInterface_Access_Array_Access_Array;
   type ProductListingInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProductListingInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ProductListingInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProductListingInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProductListingInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProductListingInterface_Access_Array_Access is (if Value /= null and then Value.all in ProductListingInterface_Access_Array_Object'Class then ProductListingInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ProductListingInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProductListingInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProductListingInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProductListingInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProductListingInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProductListingInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProductListingInterface_Access_Array_Access_Array_Object'Class then ProductListingInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.admin.inventory.listings.ProductListingInterface_Package_References;

with views.admin.inventory.listings.ProductListingInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package views.admin.inventory.listings.ProductListingInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ProductListingInterface is interface;
   subtype ProductListingInterface_Access is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access;
   function "=" (Left, Right : ProductListingInterface_Access) return Boolean renames views.admin.inventory.listings.ProductListingInterface_Package_References."=";
   subtype ProductListingInterface_Access_Array is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array;
   function "=" (Left, Right : ProductListingInterface_Access_Array) return Boolean renames views.admin.inventory.listings.ProductListingInterface_Package_References."=";
   subtype ProductListingInterface_Access_Array_Access is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array_Access;
   function "=" (Left, Right : ProductListingInterface_Access_Array_Access) return Boolean renames views.admin.inventory.listings.ProductListingInterface_Package_References."=";
   function Java_Box (Value : ProductListingInterface_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.listings.ProductListingInterface_Package_References.Java_Box;
   function Java_Unbox_ProductListingInterface_Access_Array (Value : access Java_Object'Class) return ProductListingInterface_Access_Array_Access renames views.admin.inventory.listings.ProductListingInterface_Package_References.Java_Unbox_ProductListingInterface_Access_Array;
   subtype ProductListingInterface_Access_Array_Access_Array is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProductListingInterface_Access_Array_Access_Array) return Boolean renames views.admin.inventory.listings.ProductListingInterface_Package_References."=";
   subtype ProductListingInterface_Access_Array_Access_Array_Access is views.admin.inventory.listings.ProductListingInterface_Package_References.ProductListingInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProductListingInterface_Access_Array_Access_Array_Access) return Boolean renames views.admin.inventory.listings.ProductListingInterface_Package_References."=";
   function Java_Box (Value : ProductListingInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames views.admin.inventory.listings.ProductListingInterface_Package_References.Java_Box;
   function Java_Unbox_ProductListingInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ProductListingInterface_Access_Array_Access_Array_Access renames views.admin.inventory.listings.ProductListingInterface_Package_References.Java_Unbox_ProductListingInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ProductListingInterface (Value : ProductListingInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function generateAll (This : in out ProductListingInterface) return Unbounded_String is abstract;
   function generateAll (This : in out ProductListingInterface; storeName : Unbounded_String) return Unbounded_String is abstract;
   procedure generateAll (This : in out ProductListingInterface; storeName : Unbounded_String) is abstract;

end views.admin.inventory.listings.ProductListingInterface_Package;


