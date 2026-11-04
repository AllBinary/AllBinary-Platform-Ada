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

limited with org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package;
package org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References is
   type HorizontalScreenPatrolAI_Access is access all org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package.HorizontalScreenPatrolAI'Class;
   type HorizontalScreenPatrolAI_Access_Array is array (Natural range <>) of HorizontalScreenPatrolAI_Access;
   type HorizontalScreenPatrolAI_Access_Array_Access is access all HorizontalScreenPatrolAI_Access_Array;
   type HorizontalScreenPatrolAI_Access_Array_Access_Array is array (Natural range <>) of HorizontalScreenPatrolAI_Access_Array_Access;
   type HorizontalScreenPatrolAI_Access_Array_Access_Array_Access is access all HorizontalScreenPatrolAI_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References;

with org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.media.audio.PlayerQueue_Package_References;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package PlayerQueue_Package renames Standard.org.allbinary.media.audio.PlayerQueue_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   use type GameInput_Access;
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   use type GameInput_Access_Array;
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   use type GameInput_Access_Array_Access;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   use type GameInput_Access_Array_Access_Array;
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   use type GameInput_Access_Array_Access_Array_Access;
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype PlayerQueue_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access;
   use type PlayerQueue_Access;
   subtype PlayerQueue_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array;
   use type PlayerQueue_Access_Array;
   subtype PlayerQueue_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access;
   use type PlayerQueue_Access_Array_Access;
   subtype PlayerQueue_Access_Array_Access_Array is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array;
   use type PlayerQueue_Access_Array_Access_Array;
   subtype PlayerQueue_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerQueue_Package_References.PlayerQueue_Access_Array_Access_Array_Access;
   use type PlayerQueue_Access_Array_Access_Array_Access;
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   use type Sound_Access;
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   use type Sound_Access_Array;
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   use type Sound_Access_Array_Access;
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   use type Sound_Access_Array_Access_Array;
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   use type Sound_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HorizontalScreenPatrolAI_Access is org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References.HorizontalScreenPatrolAI_Access;
   function "=" (Left, Right : HorizontalScreenPatrolAI_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References."=";
   subtype HorizontalScreenPatrolAI_Access_Array is org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References.HorizontalScreenPatrolAI_Access_Array;
   function "=" (Left, Right : HorizontalScreenPatrolAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References."=";
   subtype HorizontalScreenPatrolAI_Access_Array_Access is org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References.HorizontalScreenPatrolAI_Access_Array_Access;
   function "=" (Left, Right : HorizontalScreenPatrolAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References."=";
   subtype HorizontalScreenPatrolAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References.HorizontalScreenPatrolAI_Access_Array_Access_Array;
   function "=" (Left, Right : HorizontalScreenPatrolAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References."=";
   subtype HorizontalScreenPatrolAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References.HorizontalScreenPatrolAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HorizontalScreenPatrolAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package_References."=";

   type HorizontalScreenPatrolAI is new BasicAI with record
      keyDirection : Integer;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      firingX : Integer;
      firedIndex : Integer;
      MAX_FIRE : Integer;
      timeDelayHelper : TimeDelayHelper_Access;
      secondaryPlayerQueue : PlayerQueue_Access;
      sound_Case : Sound_Access;
   end record;
   SOUND : Integer;

   procedure Initialize (This : in out HorizontalScreenPatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return HorizontalScreenPatrolAI_Access;
   procedure processAI (This : in out HorizontalScreenPatrolAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure nextDirection (This : in out HorizontalScreenPatrolAI);

end org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package;


