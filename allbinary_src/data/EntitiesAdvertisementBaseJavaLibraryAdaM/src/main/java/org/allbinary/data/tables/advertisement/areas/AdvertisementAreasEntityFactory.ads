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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AdvertisementAreasEntityFactory is tagged;
   type AdvertisementAreasEntityFactory_Access is access all AdvertisementAreasEntityFactory'Class;
   type AdvertisementAreasEntityFactory_Access_Array is array (Natural range <>) of AdvertisementAreasEntityFactory_Access;
   type AdvertisementAreasEntityFactory_Access_Array_Access is access all AdvertisementAreasEntityFactory_Access_Array;

   type AdvertisementAreasEntityFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out AdvertisementAreasEntityFactory'Class);
   function Create return AdvertisementAreasEntityFactory_Access;
   function getInstance return AdvertisementAreasEntityInterface_Access;
   procedure getInstance;

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory_Package;


