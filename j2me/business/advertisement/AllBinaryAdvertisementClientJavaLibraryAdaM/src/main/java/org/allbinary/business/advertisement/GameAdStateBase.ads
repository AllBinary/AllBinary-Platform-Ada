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

limited with org.allbinary.business.advertisement.GameAdStateBase_Package;
package org.allbinary.business.advertisement.GameAdStateBase_Package_References is
   type GameAdStateBase_Access is access all org.allbinary.business.advertisement.GameAdStateBase_Package.GameAdStateBase'Class;
   type GameAdStateBase_Access_Array is array (Natural range <>) of GameAdStateBase_Access;
   type GameAdStateBase_Access_Array_Access is access all GameAdStateBase_Access_Array;
   type GameAdStateBase_Access_Array_Access_Array is array (Natural range <>) of GameAdStateBase_Access_Array_Access;
   type GameAdStateBase_Access_Array_Access_Array_Access is access all GameAdStateBase_Access_Array_Access_Array;
end org.allbinary.business.advertisement.GameAdStateBase_Package_References;

with org.allbinary.business.advertisement.GameAdStateBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameType_Package_References;
limited with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.business.advertisement.AdConfiguration_Package;
with org.allbinary.business.advertisement.AdConfiguration_Package_References;
limited with org.allbinary.business.advertisement.Advertisements_Package;
with org.allbinary.business.advertisement.Advertisements_Package_References;

package org.allbinary.business.advertisement.GameAdStateBase_Package is

   package GameType_Package renames Standard.org.allbinary.game.GameType_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype GameType_Access is org.allbinary.game.GameType_Package_References.GameType_Access;
   use type GameType_Access;
   subtype GameType_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array;
   use type GameType_Access_Array;
   subtype GameType_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access;
   use type GameType_Access_Array_Access;
   subtype GameType_Access_Array_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array;
   use type GameType_Access_Array_Access_Array;
   subtype GameType_Access_Array_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array_Access;
   use type GameType_Access_Array_Access_Array_Access;
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   use type GameState_Access;
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   use type GameState_Access_Array;
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   use type GameState_Access_Array_Access;
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   use type GameState_Access_Array_Access_Array;
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   use type GameState_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype AdConfiguration_Access is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access;
   use type AdConfiguration_Access;
   subtype AdConfiguration_Access_Array is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array;
   use type AdConfiguration_Access_Array;
   subtype AdConfiguration_Access_Array_Access is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array_Access;
   use type AdConfiguration_Access_Array_Access;
   subtype AdConfiguration_Access_Array_Access_Array is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array_Access_Array;
   use type AdConfiguration_Access_Array_Access_Array;
   subtype AdConfiguration_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdConfiguration_Package_References.AdConfiguration_Access_Array_Access_Array_Access;
   use type AdConfiguration_Access_Array_Access_Array_Access;
   subtype Advertisements_Access is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access;
   use type Advertisements_Access;
   subtype Advertisements_Access_Array is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array;
   use type Advertisements_Access_Array;
   subtype Advertisements_Access_Array_Access is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array_Access;
   use type Advertisements_Access_Array_Access;
   subtype Advertisements_Access_Array_Access_Array is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array_Access_Array;
   use type Advertisements_Access_Array_Access_Array;
   subtype Advertisements_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.Advertisements_Package_References.Advertisements_Access_Array_Access_Array_Access;
   use type Advertisements_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameAdStateBase_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access;
   function "=" (Left, Right : GameAdStateBase_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array;
   function "=" (Left, Right : GameAdStateBase_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access;
   function "=" (Left, Right : GameAdStateBase_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array_Access_Array is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array;
   function "=" (Left, Right : GameAdStateBase_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";
   subtype GameAdStateBase_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateBase_Package_References.GameAdStateBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameAdStateBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateBase_Package_References."=";

   type GameAdStateBase is new Java_Object with record
      adConfigurationP : AdConfiguration_Access;
      advertisementsP : Advertisements_Access;
      okayToShowAdsP : Boolean;
   end record;

   procedure Initialize (This : in out GameAdStateBase'Class; adConfiguration_Param : access AdConfiguration_Package.AdConfiguration'Class);
   function Create (adConfiguration_Param : access AdConfiguration_Package.AdConfiguration'Class) return GameAdStateBase_Access;
   procedure initViewArray (This : in out GameAdStateBase; viewArray : Java_Object_Access_Array_Access);
   procedure onStart (This : in out GameAdStateBase; anyType_Param : access Java_Object'Class);
   procedure init (This : in out GameAdStateBase);
   function isShowingAtLocation (This : in out GameAdStateBase; location : Integer) return Boolean;
   procedure isShowingAtLocation (This : in out GameAdStateBase; location : Integer);
   function isShowingAt (This : in out GameAdStateBase) return Boolean;
   procedure show (This : in out GameAdStateBase);
   procedure hide (This : in out GameAdStateBase);
   procedure onEvent (This : in out GameAdStateBase; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure processAdState (This : in out GameAdStateBase; gameState_Param : access GameState_Package.GameState'Class; gameType_Param : access GameType_Package.GameType'Class);
   procedure processPageAdState (This : in out GameAdStateBase);
   procedure playingAdState (This : in out GameAdStateBase);
   procedure playingAdStateWH (This : in out GameAdStateBase; width : Integer; height : Integer);
   procedure notPlayingAdState (This : in out GameAdStateBase);
   procedure setGameIsReady (This : in out GameAdStateBase; gameIsReady : Boolean);
   function isGameIsReady (This : in out GameAdStateBase) return Boolean;
   function getAdvertisements (This : in out GameAdStateBase) return Advertisements_Access;
   function getAdConfiguration (This : in out GameAdStateBase) return AdConfiguration_Access;
   function isOkayToShowPageAd (This : in out GameAdStateBase) return Boolean;
   procedure setOkayToShowAds (This : in out GameAdStateBase; okayToShowAds : Boolean);
   function isOkayToShowAds (This : in out GameAdStateBase) return Boolean;
   function isEnabled (This : in out GameAdStateBase) return Boolean;
   procedure onStart (This : in out GameAdStateBase; Value : Unbounded_String);

end org.allbinary.business.advertisement.GameAdStateBase_Package;


