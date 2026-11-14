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
limited with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References is
   type InventoryEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package.InventoryEntityInterface'Class;
   type InventoryEntityInterface_Access_Array is array (Natural range <>) of InventoryEntityInterface_Access;
   type InventoryEntityInterface_Access_Array_Access is access all InventoryEntityInterface_Access_Array;
   type InventoryEntityInterface_Access_Array_Access_Array is array (Natural range <>) of InventoryEntityInterface_Access_Array_Access;
   type InventoryEntityInterface_Access_Array_Access_Array_Access is access all InventoryEntityInterface_Access_Array_Access_Array;
   type InventoryEntityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryEntityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryEntityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryEntityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryEntityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryEntityInterface_Access_Array_Access is (if Value /= null and then Value.all in InventoryEntityInterface_Access_Array_Object'Class then InventoryEntityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type InventoryEntityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryEntityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryEntityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryEntityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryEntityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryEntityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InventoryEntityInterface_Access_Array_Access_Array_Object'Class then InventoryEntityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype ItemInterface_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access;
   use type ItemInterface_Access;
   subtype ItemInterface_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array;
   use type ItemInterface_Access_Array;
   subtype ItemInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access;
   use type ItemInterface_Access_Array_Access;
   subtype ItemInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array;
   use type ItemInterface_Access_Array_Access_Array;
   subtype ItemInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package_References.ItemInterface_Access_Array_Access_Array_Access;
   use type ItemInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type InventoryEntityInterface is interface and BasicDataTableInterface;
   subtype InventoryEntityInterface_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.InventoryEntityInterface_Access;
   function "=" (Left, Right : InventoryEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References."=";
   subtype InventoryEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.InventoryEntityInterface_Access_Array;
   function "=" (Left, Right : InventoryEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References."=";
   subtype InventoryEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.InventoryEntityInterface_Access_Array_Access;
   function "=" (Left, Right : InventoryEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References."=";
   function Java_Box (Value : InventoryEntityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.Java_Box;
   function Java_Unbox_InventoryEntityInterface_Access_Array (Value : access Java_Object'Class) return InventoryEntityInterface_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.Java_Unbox_InventoryEntityInterface_Access_Array;
   subtype InventoryEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.InventoryEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References."=";
   subtype InventoryEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.InventoryEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References."=";
   function Java_Box (Value : InventoryEntityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.Java_Box;
   function Java_Unbox_InventoryEntityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return InventoryEntityInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package_References.Java_Unbox_InventoryEntityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_InventoryEntityInterface (Value : InventoryEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getItem (This : in out InventoryEntityInterface; id : Unbounded_String) return ItemInterface_Access is abstract;
   procedure getItem (This : in out InventoryEntityInterface; id : Unbounded_String) is abstract;
   function getItems (This : in out InventoryEntityInterface; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access is abstract;
   procedure getItems (This : in out InventoryEntityInterface; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is abstract;
   function getWeight (This : in out InventoryEntityInterface; id : Unbounded_String) return Unbounded_String is abstract;
   procedure getWeight (This : in out InventoryEntityInterface; id : Unbounded_String) is abstract;
   procedure deleteWhere (This : in out InventoryEntityInterface; key : Unbounded_String; value : Unbounded_String) is abstract;
   procedure insert (This : in out InventoryEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out InventoryEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;


