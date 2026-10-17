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
with org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package; use org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package;
with org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package; use org.allbinary.data.tables.advertisement.AdvertisementsEntityInterface_Package;

package org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AdvertisementsEntityFactory is tagged;
   type AdvertisementsEntityFactory_Access is access all AdvertisementsEntityFactory'Class;
   type AdvertisementsEntityFactory_Access_Array is array (Natural range <>) of AdvertisementsEntityFactory_Access;
   type AdvertisementsEntityFactory_Access_Array_Access is access all AdvertisementsEntityFactory_Access_Array;

   type AdvertisementsEntityFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out AdvertisementsEntityFactory'Class);
   function Create return AdvertisementsEntityFactory_Access;
   function getInstance return AdvertisementsEntityInterface_Access;

end org.allbinary.data.tables.advertisement.AdvertisementsEntityFactory_Package;


