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

limited with org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;
package org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References is
   type AdvertisementProcessorInterface_Access is access all org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package.AdvertisementProcessorInterface'Class;
   type AdvertisementProcessorInterface_Access_Array is array (Natural range <>) of AdvertisementProcessorInterface_Access;
   type AdvertisementProcessorInterface_Access_Array_Access is access all AdvertisementProcessorInterface_Access_Array;
   type AdvertisementProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementProcessorInterface_Access_Array_Access;
   type AdvertisementProcessorInterface_Access_Array_Access_Array_Access is access all AdvertisementProcessorInterface_Access_Array_Access_Array;
end org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References;

with org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AdvertisementProcessorInterface_Access is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access;
   function "=" (Left, Right : AdvertisementProcessorInterface_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References."=";
   subtype AdvertisementProcessorInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array;
   function "=" (Left, Right : AdvertisementProcessorInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References."=";
   subtype AdvertisementProcessorInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References."=";
   subtype AdvertisementProcessorInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References."=";
   subtype AdvertisementProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References."=";

   type AdvertisementProcessorInterface is new Java_Object with null record;

   procedure Initialize (This : in out AdvertisementProcessorInterface'Class);
   function Create return AdvertisementProcessorInterface_Access;
   procedure process (This : in out AdvertisementProcessorInterface);
   procedure start (This : in out AdvertisementProcessorInterface);
   procedure stop (This : in out AdvertisementProcessorInterface);

end org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;


