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

limited with org.allbinary.business.advertisement.Advertisements_Package;
package org.allbinary.business.advertisement.Advertisements_Package_References is
   type Advertisements_Access is access all org.allbinary.business.advertisement.Advertisements_Package.Advertisements'Class;
   type Advertisements_Access_Array is array (Natural range <>) of Advertisements_Access;
   type Advertisements_Access_Array_Access is access all Advertisements_Access_Array;
   type Advertisements_Access_Array_Access_Array is array (Natural range <>) of Advertisements_Access_Array_Access;
   type Advertisements_Access_Array_Access_Array_Access is access all Advertisements_Access_Array_Access_Array;
end org.allbinary.business.advertisement.Advertisements_Package_References;

with org.allbinary.business.advertisement.Advertisements_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;
with org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References;

package org.allbinary.business.advertisement.Advertisements_Package is

   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
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
   subtype AdvertisementProcessorInterface_Access is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access;
   use type AdvertisementProcessorInterface_Access;
   subtype AdvertisementProcessorInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array;
   use type AdvertisementProcessorInterface_Access_Array;
   subtype AdvertisementProcessorInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array_Access;
   use type AdvertisementProcessorInterface_Access_Array_Access;
   subtype AdvertisementProcessorInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array_Access_Array;
   use type AdvertisementProcessorInterface_Access_Array_Access_Array;
   subtype AdvertisementProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package_References.AdvertisementProcessorInterface_Access_Array_Access_Array_Access;
   use type AdvertisementProcessorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Advertisements_Access is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access;
   function "=" (Left, Right : Advertisements_Access) return Boolean renames org.allbinary.business.advertisement.Advertisements_Package_References."=";
   subtype Advertisements_Access_Array is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array;
   function "=" (Left, Right : Advertisements_Access_Array) return Boolean renames org.allbinary.business.advertisement.Advertisements_Package_References."=";
   subtype Advertisements_Access_Array_Access is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array_Access;
   function "=" (Left, Right : Advertisements_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.Advertisements_Package_References."=";
   subtype Advertisements_Access_Array_Access_Array is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array_Access_Array;
   function "=" (Left, Right : Advertisements_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.Advertisements_Package_References."=";
   subtype Advertisements_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Advertisements_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.Advertisements_Package_References."=";

   type Advertisements is new Java_Object with record
      bannerList : BasicArrayList_Access;
      pageList : BasicArrayList_Access;
      myRandomFactory : MyRandomFactory_Access;
   end record;

   procedure Initialize (This : in out Advertisements'Class);
   function Create return Advertisements_Access;
   procedure addPage (This : in out Advertisements; advertisementProcessorInterface_Param : access AdvertisementProcessorInterface_Package.AdvertisementProcessorInterface'Class);
   procedure startRandomPage (This : in out Advertisements);
   procedure processRandomPage (This : in out Advertisements);
   procedure stopAllPage (This : in out Advertisements);
   procedure addBanner (This : in out Advertisements; advertisementProcessorInterface_Param : access AdvertisementProcessorInterface_Package.AdvertisementProcessorInterface'Class);
   procedure startAll (This : in out Advertisements);
   procedure stopAllBanner (This : in out Advertisements);
   function getBanner (This : in out Advertisements; index : Integer) return AdvertisementProcessorInterface_Access;
   procedure getBanner (This : in out Advertisements; index : Integer);
   procedure stopAll (This : in out Advertisements);

end org.allbinary.business.advertisement.Advertisements_Package;


