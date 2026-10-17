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

package org.allbinary.business.advertisement.search.AdvertisementSearchData_Package is


   type AdvertisementSearchData is tagged;
   type AdvertisementSearchData_Access is access all AdvertisementSearchData'Class;
   type AdvertisementSearchData_Access_Array is array (Natural range <>) of AdvertisementSearchData_Access;
   type AdvertisementSearchData_Access_Array_Access is access all AdvertisementSearchData_Access_Array;

   type AdvertisementSearchData is new Java_Object with record
      TITLE : Unbounded_String;
      PRICE : Unbounded_String;
      RELEVANCY : Unbounded_String;
      POPULARITY : Unbounded_String;
   end record;
   instance : AdvertisementSearchData_Access;

   procedure Initialize (This : in out AdvertisementSearchData'Class);
   function Create return AdvertisementSearchData_Access;
   function getInstance return AdvertisementSearchData_Access;

end org.allbinary.business.advertisement.search.AdvertisementSearchData_Package;


