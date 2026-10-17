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
with org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaConstraintsInterface_Package;

package org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package is


   type AdvertisementAreaInterface is interface;
   type AdvertisementAreaInterface_Access is access all AdvertisementAreaInterface'Class;
   type AdvertisementAreaInterface_Access_Array is array (Natural range <>) of AdvertisementAreaInterface_Access;
   type AdvertisementAreaInterface_Access_Array_Access is access all AdvertisementAreaInterface_Access_Array;
   function getName (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   function getStoreName (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   function getDescription (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   function getConstraints (This : in out AdvertisementAreaInterface) return AdvertisementAreaConstraintsInterface_Access is abstract;
   function getCampaign (This : in out AdvertisementAreaInterface) return Unbounded_String is abstract;
   procedure setName (This : in out AdvertisementAreaInterface; name : Unbounded_String) is abstract;
   procedure setStoreName (This : in out AdvertisementAreaInterface; storeName : Unbounded_String) is abstract;
   procedure setDescription (This : in out AdvertisementAreaInterface; description : Unbounded_String) is abstract;
   procedure setConstraints (This : in out AdvertisementAreaInterface; advertisementConstraintsInterface_Param : access AdvertisementAreaConstraintsInterface'Class) is abstract;
   procedure setCampaign (This : in out AdvertisementAreaInterface; campaign : Unbounded_String) is abstract;

end org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;


