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

package org.allbinary.business.advertisement.area.AdvertisementAreaData_Package is


   type AdvertisementAreaData is tagged;
   type AdvertisementAreaData_Access is access all AdvertisementAreaData'Class;
   type AdvertisementAreaData_Access_Array is array (Natural range <>) of AdvertisementAreaData_Access;
   type AdvertisementAreaData_Access_Array_Access is access all AdvertisementAreaData_Access_Array;
   type AdvertisementAreaData_Access_Array_Access_Array is array (Natural range <>) of AdvertisementAreaData_Access_Array_Access;
   type AdvertisementAreaData_Access_Array_Access_Array_Access is access all AdvertisementAreaData_Access_Array_Access_Array;

   type AdvertisementAreaData is new Java_Object with record
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      CONSTRAINTS : Unbounded_String;
   end record;
   instance : AdvertisementAreaData_Access;

   procedure Initialize (This : in out AdvertisementAreaData'Class);
   function Create return AdvertisementAreaData_Access;
   function getInstance return AdvertisementAreaData_Access;

end org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;


