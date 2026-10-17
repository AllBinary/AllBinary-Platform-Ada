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

package org.allbinary.business.advertisement.AdvertisementData_Package is


   type AdvertisementData is tagged;
   type AdvertisementData_Access is access all AdvertisementData'Class;
   type AdvertisementData_Access_Array is array (Natural range <>) of AdvertisementData_Access;
   type AdvertisementData_Access_Array_Access is access all AdvertisementData_Access_Array;

   type AdvertisementData is new Java_Object with record
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
   end record;
   instance : AdvertisementData_Access;

   procedure Initialize (This : in out AdvertisementData'Class);
   function Create return AdvertisementData_Access;
   function getInstance return AdvertisementData_Access;
   procedure getInstance;

end org.allbinary.business.advertisement.AdvertisementData_Package;


