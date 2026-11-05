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

limited with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package;
package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References is
   type StoreFrontsEntityInterface_Access is access all org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package.StoreFrontsEntityInterface'Class;
   type StoreFrontsEntityInterface_Access_Array is array (Natural range <>) of StoreFrontsEntityInterface_Access;
   type StoreFrontsEntityInterface_Access_Array_Access is access all StoreFrontsEntityInterface_Access_Array;
   type StoreFrontsEntityInterface_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsEntityInterface_Access_Array_Access;
   type StoreFrontsEntityInterface_Access_Array_Access_Array_Access is access all StoreFrontsEntityInterface_Access_Array_Access_Array;
end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References;

with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References;
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
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   type StoreFrontsEntityInterface is interface and BasicDataTableInterface;
   subtype StoreFrontsEntityInterface_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References.StoreFrontsEntityInterface_Access;
   function "=" (Left, Right : StoreFrontsEntityInterface_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References."=";
   subtype StoreFrontsEntityInterface_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References.StoreFrontsEntityInterface_Access_Array;
   function "=" (Left, Right : StoreFrontsEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References."=";
   subtype StoreFrontsEntityInterface_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References.StoreFrontsEntityInterface_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References."=";
   subtype StoreFrontsEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References.StoreFrontsEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References."=";
   subtype StoreFrontsEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References.StoreFrontsEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package_References."=";
   function Java_Object_Access_From_StoreFrontsEntityInterface (Value : StoreFrontsEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getStoreFrontInterface (This : in out StoreFrontsEntityInterface; name : Unbounded_String) return StoreFrontInterface_Access is abstract;
   procedure getStoreFrontInterface (This : in out StoreFrontsEntityInterface; name : Unbounded_String) is abstract;
   function getStoreFrontNames (This : in out StoreFrontsEntityInterface) return BasicArrayList_Access is abstract;
   procedure delete (This : in out StoreFrontsEntityInterface; value : Unbounded_String) is abstract;
   procedure insert (This : in out StoreFrontsEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out StoreFrontsEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityInterface_Package;


