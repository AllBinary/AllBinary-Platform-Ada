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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AdvertisementAreaInterface_Package renames Standard.org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type AdvertisementAreasEntityInterface is interface and BasicDataTableInterface;
   type AdvertisementAreasEntityInterface_Access is access all AdvertisementAreasEntityInterface'Class;
   type AdvertisementAreasEntityInterface_Access_Array is array (Natural range <>) of AdvertisementAreasEntityInterface_Access;
   type AdvertisementAreasEntityInterface_Access_Array_Access is access all AdvertisementAreasEntityInterface_Access_Array;
   function get (This : in out AdvertisementAreasEntityInterface; storeName : Unbounded_String) return BasicArrayList_Access is abstract;
   function get (This : in out AdvertisementAreasEntityInterface; storeName : Unbounded_String; advertisementAreaName : Unbounded_String) return AdvertisementAreaInterface_Access is abstract;
   procedure delete (This : in out AdvertisementAreasEntityInterface; value : Unbounded_String) is abstract;
   procedure insert (This : in out AdvertisementAreasEntityInterface; values_Param : access BasicArrayList'Class) is abstract;
   procedure update (This : in out AdvertisementAreasEntityInterface; updatedValues_Param : access HashMap'Class) is abstract;

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface_Package;


