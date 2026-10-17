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
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;

package org.allbinary.business.advertisement.AdConfiguration_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;

   type AdConfiguration is tagged;
   type AdConfiguration_Access is access all AdConfiguration'Class;
   type AdConfiguration_Access_Array is array (Natural range <>) of AdConfiguration_Access;
   type AdConfiguration_Access_Array_Access is access all AdConfiguration_Access_Array;

   type AdConfiguration is new Java_Object with record
      INNERACTIVE : Unbounded_String;
      LEADBOLT : Unbounded_String;
      ADMOB : Unbounded_String;
   end record;

   procedure Initialize (This : in out AdConfiguration'Class; advertIdArray : Java_Object_Access_Array_Access);
   function Create (advertIdArray : Java_Object_Access_Array_Access) return AdConfiguration_Access;
   function getValidAdSpots (This : in out AdConfiguration) return Direction_Access_Array_Access;
   procedure process (This : in out AdConfiguration; gameState_Param : access GameState_Package.GameState'Class);
   procedure processDemo (This : in out AdConfiguration; state : Integer);
   procedure setShowAds (This : in out AdConfiguration);
   procedure setToggleAds (This : in out AdConfiguration; showAds : Boolean);
   function isShowAds (This : in out AdConfiguration) return Boolean;

end org.allbinary.business.advertisement.AdConfiguration_Package;


