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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.PlayerQueue_Package; use org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package is

   package BasicAI_Package renames org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames org.allbinary.game.input.GameInput_Package;
   package AllBinaryGameLayerManager_Package renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package MyRandomFactory_Package renames org.allbinary.game.rand.MyRandomFactory_Package;
   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package PlayerQueue_Package renames org.allbinary.media.audio.PlayerQueue_Package;
   package SecondaryPlayerQueueFactory_Package renames org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package Sound_Package renames org.allbinary.media.audio.Sound_Package;
   package TimeDelayHelper_Package renames org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type HorizontalScreenPatrolAI is tagged;
   type HorizontalScreenPatrolAI_Access is access all HorizontalScreenPatrolAI'Class;
   type HorizontalScreenPatrolAI_Access_Array is array (Natural range <>) of HorizontalScreenPatrolAI_Access;
   type HorizontalScreenPatrolAI_Access_Array_Access is access all HorizontalScreenPatrolAI_Access_Array;

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

   procedure Initialize (This : in out HorizontalScreenPatrolAI'Class; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);
   function Create (hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return HorizontalScreenPatrolAI_Access;
   procedure processAI (This : in out HorizontalScreenPatrolAI; allBinaryLayerManager : AllBinaryLayerManager_Access);
   procedure nextDirection (This : in out HorizontalScreenPatrolAI);

end org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package;


