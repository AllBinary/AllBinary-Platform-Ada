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
with org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package; use org.allbinary.business.advertisement.search.category.AdvertisementCategoryInterface_Package;

package org.allbinary.business.advertisement.search.category.BasicAdvertisementCategory_Package is


   type BasicAdvertisementCategory is tagged;
   type BasicAdvertisementCategory_Access is access all BasicAdvertisementCategory'Class;
   type BasicAdvertisementCategory_Access_Array is array (Natural range <>) of BasicAdvertisementCategory_Access;
   type BasicAdvertisementCategory_Access_Array_Access is access all BasicAdvertisementCategory_Access_Array;
   type BasicAdvertisementCategory_Access_Array_Access_Array is array (Natural range <>) of BasicAdvertisementCategory_Access_Array_Access;
   type BasicAdvertisementCategory_Access_Array_Access_Array_Access is access all BasicAdvertisementCategory_Access_Array_Access_Array;

   type BasicAdvertisementCategory is new Java_Object and AdvertisementCategoryInterface with record
      categoryId : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicAdvertisementCategory'Class; categoryId : Unbounded_String);
   function Create (categoryId : Unbounded_String) return BasicAdvertisementCategory_Access;
   function toString (This : in out BasicAdvertisementCategory) return Unbounded_String;

end org.allbinary.business.advertisement.search.category.BasicAdvertisementCategory_Package;


