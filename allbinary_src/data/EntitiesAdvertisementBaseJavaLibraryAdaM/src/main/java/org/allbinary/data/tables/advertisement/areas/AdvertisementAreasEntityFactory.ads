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
limited with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package;
package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References is
   type AdvertisementAreasEntityFactory_Access is access all org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package.AdvertisementAreasEntityFactory'Class;
   type AdvertisementAreasEntityFactory_Access_Array is array (Natural range <>) of AdvertisementAreasEntityFactory_Access;
   type AdvertisementAreasEntityFactory_Access_Array_Access is access all AdvertisementAreasEntityFactory_Access_Array;
   type AdvertisementAreasEntityFactory_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreasEntityFactory_Access_Array_Access;
   type AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access is access all AdvertisementAreasEntityFactory_Access_Array_Access_Array;
   type AdvertisementAreasEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreasEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreasEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreasEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreasEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreasEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreasEntityFactory_Access_Array_Object'Class then AdvertisementAreasEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementAreasEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementAreasEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementAreasEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementAreasEntityFactory_Access_Array_Access_Array_Object'Class then AdvertisementAreasEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References;

with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;
with org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References;

package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package is

   package Reference_Types is
   subtype AdvertisementAreasEntityInterface_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access;
   use type AdvertisementAreasEntityInterface_Access;
   subtype AdvertisementAreasEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array;
   use type AdvertisementAreasEntityInterface_Access_Array;
   subtype AdvertisementAreasEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access;
   use type AdvertisementAreasEntityInterface_Access_Array_Access;
   subtype AdvertisementAreasEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access_Array;
   use type AdvertisementAreasEntityInterface_Access_Array_Access_Array;
   subtype AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package_References.AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access;
   use type AdvertisementAreasEntityInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementAreasEntityFactory_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.AdvertisementAreasEntityFactory_Access;
   function "=" (Left, Right : AdvertisementAreasEntityFactory_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References."=";
   subtype AdvertisementAreasEntityFactory_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.AdvertisementAreasEntityFactory_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References."=";
   subtype AdvertisementAreasEntityFactory_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.AdvertisementAreasEntityFactory_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References."=";
   function Java_Box (Value : AdvertisementAreasEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreasEntityFactory_Access_Array (Value : access Java_Object'Class) return AdvertisementAreasEntityFactory_Access_Array_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.Java_Unbox_AdvertisementAreasEntityFactory_Access_Array;
   subtype AdvertisementAreasEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.AdvertisementAreasEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreasEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References."=";
   subtype AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References."=";
   function Java_Box (Value : AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.Java_Box;
   function Java_Unbox_AdvertisementAreasEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementAreasEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package_References.Java_Unbox_AdvertisementAreasEntityFactory_Access_Array_Access_Array;

   type AdvertisementAreasEntityFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out AdvertisementAreasEntityFactory'Class);
   function Create return AdvertisementAreasEntityFactory_Access;
   function getInstance return AdvertisementAreasEntityInterface_Access;

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package;


