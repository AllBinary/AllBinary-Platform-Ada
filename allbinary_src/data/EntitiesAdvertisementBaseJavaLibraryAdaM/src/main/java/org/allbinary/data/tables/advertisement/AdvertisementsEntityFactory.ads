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

limited with org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package;
package org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References is
   type AdvertisementsEntityFactory_Access is access all org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package.AdvertisementsEntityFactory'Class;
   type AdvertisementsEntityFactory_Access_Array is array (Natural range <>) of AdvertisementsEntityFactory_Access;
   type AdvertisementsEntityFactory_Access_Array_Access is access all AdvertisementsEntityFactory_Access_Array;
   type AdvertisementsEntityFactory_Access_Array_Access_Array is array (Natural range <>) of AdvertisementsEntityFactory_Access_Array_Access;
   type AdvertisementsEntityFactory_Access_Array_Access_Array_Access is access all AdvertisementsEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References;

with org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package;
with org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References;

package org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package is

   package Reference_Types is
   subtype AdvertisementsEntityInterface_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access;
   use type AdvertisementsEntityInterface_Access;
   subtype AdvertisementsEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array;
   use type AdvertisementsEntityInterface_Access_Array;
   subtype AdvertisementsEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array_Access;
   use type AdvertisementsEntityInterface_Access_Array_Access;
   subtype AdvertisementsEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array_Access_Array;
   use type AdvertisementsEntityInterface_Access_Array_Access_Array;
   subtype AdvertisementsEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package_References.AdvertisementsEntityInterface_Access_Array_Access_Array_Access;
   use type AdvertisementsEntityInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementsEntityFactory_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References.AdvertisementsEntityFactory_Access;
   function "=" (Left, Right : AdvertisementsEntityFactory_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References."=";
   subtype AdvertisementsEntityFactory_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References.AdvertisementsEntityFactory_Access_Array;
   function "=" (Left, Right : AdvertisementsEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References."=";
   subtype AdvertisementsEntityFactory_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References.AdvertisementsEntityFactory_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References."=";
   subtype AdvertisementsEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References.AdvertisementsEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementsEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References."=";
   subtype AdvertisementsEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References.AdvertisementsEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package_References."=";

   type AdvertisementsEntityFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out AdvertisementsEntityFactory'Class);
   function Create return AdvertisementsEntityFactory_Access;
   function getInstance return AdvertisementsEntityInterface_Access;

end org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package;


