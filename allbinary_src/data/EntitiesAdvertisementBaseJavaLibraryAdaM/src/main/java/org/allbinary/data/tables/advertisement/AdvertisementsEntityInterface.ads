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
limited with org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package;
package org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References is
   type AdvertisementsEntityInterface_Access is access all org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package.AdvertisementsEntityInterface'Class;
   type AdvertisementsEntityInterface_Access_Array is array (Natural range <>) of AdvertisementsEntityInterface_Access;
   type AdvertisementsEntityInterface_Access_Array_Access is access all AdvertisementsEntityInterface_Access_Array;
   type AdvertisementsEntityInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementsEntityInterface_Access_Array_Access;
   type AdvertisementsEntityInterface_Access_Array_Access_Array_Access is access all AdvertisementsEntityInterface_Access_Array_Access_Array;
   type AdvertisementsEntityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementsEntityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementsEntityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementsEntityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementsEntityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementsEntityInterface_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementsEntityInterface_Access_Array_Object'Class then AdvertisementsEntityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementsEntityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementsEntityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementsEntityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementsEntityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementsEntityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementsEntityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementsEntityInterface_Access_Array_Access_Array_Object'Class then AdvertisementsEntityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References;

with org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References;
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

package org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package is

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


   type AdvertisementsEntityInterface is interface and BasicDataTableInterface;
   subtype AdvertisementsEntityInterface_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access;
   function "=" (Left, Right : AdvertisementsEntityInterface_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References."=";
   subtype AdvertisementsEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array;
   function "=" (Left, Right : AdvertisementsEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References."=";
   subtype AdvertisementsEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References."=";
   function Java_Box (Value : AdvertisementsEntityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementsEntityInterface_Access_Array (Value : access Java_Object'Class) return AdvertisementsEntityInterface_Access_Array_Access renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.Java_Unbox_AdvertisementsEntityInterface_Access_Array;
   subtype AdvertisementsEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementsEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References."=";
   subtype AdvertisementsEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References."=";
   function Java_Box (Value : AdvertisementsEntityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementsEntityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementsEntityInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.Java_Unbox_AdvertisementsEntityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AdvertisementsEntityInterface (Value : AdvertisementsEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure delete (This : in out AdvertisementsEntityInterface; value : Unbounded_String) is abstract;
   procedure insert (This : in out AdvertisementsEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out AdvertisementsEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package;


