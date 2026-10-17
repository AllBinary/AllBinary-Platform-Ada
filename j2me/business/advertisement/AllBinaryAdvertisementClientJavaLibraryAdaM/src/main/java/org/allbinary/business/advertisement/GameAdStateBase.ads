-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.GameType_Package; use org.allbinary.game.GameType_Package;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.business.advertisement.GameAdStateBase_Package is

   package GameType_Package renames org.allbinary.game.GameType_Package;
   package GameState_Package renames org.allbinary.game.state.GameState_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;

   type GameAdStateBase is tagged;
   type GameAdStateBase_Access is access all GameAdStateBase'Class;
   type GameAdStateBase_Access_Array is array (Natural range <>) of GameAdStateBase_Access;
   type GameAdStateBase_Access_Array_Access is access all GameAdStateBase_Access_Array;

   type GameAdStateBase is new Java_Object with record
      adConfigurationP : AdConfiguration_Access;
      advertisementsP : Advertisements_Access;
      okayToShowAdsP : Boolean;
   end record;

   procedure Initialize (This : in out GameAdStateBase'Class; adConfiguration : AdConfiguration_Access);
   function Create (adConfiguration : AdConfiguration_Access) return GameAdStateBase_Access;
   procedure initViewArray (This : in out GameAdStateBase; viewArray : Java_Object_Access_Array_Access);
   procedure onStart (This : in out GameAdStateBase; anyType : Java_Object_Access);
   procedure init (This : in out GameAdStateBase);
   function isShowingAtLocation (This : in out GameAdStateBase; location : Integer) return Boolean;
   procedure isShowingAtLocation (This : in out GameAdStateBase; location : Integer);
   function isShowingAt (This : in out GameAdStateBase) return Boolean;
   procedure isShowingAt (This : in out GameAdStateBase);
   procedure show (This : in out GameAdStateBase);
   procedure hide (This : in out GameAdStateBase);
   procedure onEvent (This : in out GameAdStateBase; eventObject : AllBinaryEventObject_Access);
   procedure processAdState (This : in out GameAdStateBase; gameState : GameState_Access; gameType : GameType_Access);
   procedure processPageAdState (This : in out GameAdStateBase);
   procedure playingAdState (This : in out GameAdStateBase);
   procedure playingAdStateWH (This : in out GameAdStateBase; width : Integer; height : Integer);
   procedure notPlayingAdState (This : in out GameAdStateBase);
   procedure setGameIsReady (This : in out GameAdStateBase; gameIsReady : Boolean);
   function isGameIsReady (This : in out GameAdStateBase) return Boolean;
   procedure isGameIsReady (This : in out GameAdStateBase);
   function getAdvertisements (This : in out GameAdStateBase) return Advertisements_Access;
   procedure getAdvertisements (This : in out GameAdStateBase);
   function getAdConfiguration (This : in out GameAdStateBase) return AdConfiguration_Access;
   procedure getAdConfiguration (This : in out GameAdStateBase);
   function isOkayToShowPageAd (This : in out GameAdStateBase) return Boolean;
   procedure isOkayToShowPageAd (This : in out GameAdStateBase);
   procedure setOkayToShowAds (This : in out GameAdStateBase; okayToShowAds : Boolean);
   function isOkayToShowAds (This : in out GameAdStateBase) return Boolean;
   procedure isOkayToShowAds (This : in out GameAdStateBase);
   function isEnabled (This : in out GameAdStateBase) return Boolean;
   procedure isEnabled (This : in out GameAdStateBase);

end org.allbinary.business.advertisement.GameAdStateBase_Package;


