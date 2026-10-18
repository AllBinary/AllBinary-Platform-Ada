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

package org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package is


   type AdvertisementProcessorInterface is tagged;
   type AdvertisementProcessorInterface_Access is access all AdvertisementProcessorInterface'Class;
   type AdvertisementProcessorInterface_Access_Array is array (Natural range <>) of AdvertisementProcessorInterface_Access;
   type AdvertisementProcessorInterface_Access_Array_Access is access all AdvertisementProcessorInterface_Access_Array;
   type AdvertisementProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementProcessorInterface_Access_Array_Access;
   type AdvertisementProcessorInterface_Access_Array_Access_Array_Access is access all AdvertisementProcessorInterface_Access_Array_Access_Array;

   type AdvertisementProcessorInterface is new Java_Object with null record;

   procedure Initialize (This : in out AdvertisementProcessorInterface'Class);
   function Create return AdvertisementProcessorInterface_Access;
   procedure process (This : in out AdvertisementProcessorInterface);
   procedure start (This : in out AdvertisementProcessorInterface);
   procedure stop (This : in out AdvertisementProcessorInterface);

end org.allbinary.business.advertisement.AdvertisementProcessorInterface_Package;


