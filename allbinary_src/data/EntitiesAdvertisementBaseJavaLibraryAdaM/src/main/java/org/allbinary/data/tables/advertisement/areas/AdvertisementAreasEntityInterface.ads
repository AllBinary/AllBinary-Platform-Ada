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

limited with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;
package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References is
   type AdvertisementAreasEntityInterface_Access is access all org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package.AdvertisementAreasEntityInterface'Class;
   type AdvertisementAreasEntityInterface_Access_Array is array (Natural range <>) of AdvertisementAreasEntityInterface_Access;
   type AdvertisementAreasEntityInterface_Access_Array_Access is access all AdvertisementAreasEntityInterface_Access_Array;
   type AdvertisementAreasEntityInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreasEntityInterface_Access_Array_Access;
   type AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access is access all AdvertisementAreasEntityInterface_Access_Array_Access_Array;
end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References;

with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References;
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
limited with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AdvertisementAreaInterface_Package renames Standard.org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
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
   subtype AdvertisementAreaInterface_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access;
   use type AdvertisementAreaInterface_Access;
   subtype AdvertisementAreaInterface_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array;
   use type AdvertisementAreaInterface_Access_Array;
   subtype AdvertisementAreaInterface_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access;
   use type AdvertisementAreaInterface_Access_Array_Access;
   subtype AdvertisementAreaInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array;
   use type AdvertisementAreaInterface_Access_Array_Access_Array;
   subtype AdvertisementAreaInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array_Access;
   use type AdvertisementAreaInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AdvertisementAreasEntityInterface is interface and BasicDataTableInterface;
   subtype AdvertisementAreasEntityInterface_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   subtype AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References."=";
   function Java_Object_Access_From_AdvertisementAreasEntityInterface (Value : AdvertisementAreasEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function get (This : in out AdvertisementAreasEntityInterface; storeName : Unbounded_String) return BasicArrayList_Access is abstract;
   function get (This : in out AdvertisementAreasEntityInterface; storeName : Unbounded_String; advertisementAreaName : Unbounded_String) return AdvertisementAreaInterface_Access is abstract;
   procedure delete (This : in out AdvertisementAreasEntityInterface; value : Unbounded_String) is abstract;
   procedure insert (This : in out AdvertisementAreasEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out AdvertisementAreasEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;


