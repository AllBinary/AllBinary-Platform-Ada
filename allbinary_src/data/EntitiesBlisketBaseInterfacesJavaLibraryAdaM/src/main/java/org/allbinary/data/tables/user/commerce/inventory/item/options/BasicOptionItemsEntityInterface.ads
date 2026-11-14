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
limited with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References is
   type BasicOptionItemsEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package.BasicOptionItemsEntityInterface'Class;
   type BasicOptionItemsEntityInterface_Access_Array is array (Natural range <>) of BasicOptionItemsEntityInterface_Access;
   type BasicOptionItemsEntityInterface_Access_Array_Access is access all BasicOptionItemsEntityInterface_Access_Array;
   type BasicOptionItemsEntityInterface_Access_Array_Access_Array is array (Natural range <>) of BasicOptionItemsEntityInterface_Access_Array_Access;
   type BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access is access all BasicOptionItemsEntityInterface_Access_Array_Access_Array;
   type BasicOptionItemsEntityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicOptionItemsEntityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicOptionItemsEntityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicOptionItemsEntityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicOptionItemsEntityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicOptionItemsEntityInterface_Access_Array_Access is (if Value /= null and then Value.all in BasicOptionItemsEntityInterface_Access_Array_Object'Class then BasicOptionItemsEntityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BasicOptionItemsEntityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicOptionItemsEntityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicOptionItemsEntityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicOptionItemsEntityInterface_Access_Array_Access_Array_Object'Class then BasicOptionItemsEntityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References;
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
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   type BasicOptionItemsEntityInterface is interface and BasicDataTableInterface;
   subtype BasicOptionItemsEntityInterface_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.BasicOptionItemsEntityInterface_Access;
   function "=" (Left, Right : BasicOptionItemsEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References."=";
   subtype BasicOptionItemsEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.BasicOptionItemsEntityInterface_Access_Array;
   function "=" (Left, Right : BasicOptionItemsEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References."=";
   subtype BasicOptionItemsEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.BasicOptionItemsEntityInterface_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemsEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References."=";
   function Java_Box (Value : BasicOptionItemsEntityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.Java_Box;
   function Java_Unbox_BasicOptionItemsEntityInterface_Access_Array (Value : access Java_Object'Class) return BasicOptionItemsEntityInterface_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.Java_Unbox_BasicOptionItemsEntityInterface_Access_Array;
   subtype BasicOptionItemsEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.BasicOptionItemsEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicOptionItemsEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References."=";
   subtype BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References."=";
   function Java_Box (Value : BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.Java_Box;
   function Java_Unbox_BasicOptionItemsEntityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicOptionItemsEntityInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package_References.Java_Unbox_BasicOptionItemsEntityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BasicOptionItemsEntityInterface (Value : BasicOptionItemsEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure delete (This : in out BasicOptionItemsEntityInterface; value : Unbounded_String) is abstract;
   procedure insert (This : in out BasicOptionItemsEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out BasicOptionItemsEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityInterface_Package;


