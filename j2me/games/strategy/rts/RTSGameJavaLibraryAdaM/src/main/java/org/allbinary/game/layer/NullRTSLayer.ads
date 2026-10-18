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
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package; use org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;

package org.allbinary.game.layer.NullRTSLayer_Package is

   package GameNotificationHud_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
   package DestroyedEvent_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package Capital_Package renames Standard.org.allbinary.game.layer.capital.Capital_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;

   type NullRTSLayer is tagged;
   type NullRTSLayer_Access is access all NullRTSLayer'Class;
   type NullRTSLayer_Access_Array is array (Natural range <>) of NullRTSLayer_Access;
   type NullRTSLayer_Access_Array_Access is access all NullRTSLayer_Access_Array;
   type NullRTSLayer_Access_Array_Access_Array is array (Natural range <>) of NullRTSLayer_Access_Array_Access;
   type NullRTSLayer_Access_Array_Access_Array_Access is access all NullRTSLayer_Access_Array_Access_Array;

   type NullRTSLayer is new NullPathFindingLayer and RTSPlayerLayerInterface with null record;
   NULL_RTS_LAYER : NullRTSLayer_Access;

   procedure Initialize (This : in out NullRTSLayer'Class);
   function Create return NullRTSLayer_Access;
   function getName (This : in out NullRTSLayer) return Unbounded_String;
   procedure processInput (This : in out NullRTSLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure initInputProcessors (This : in out NullRTSLayer);
   function getGameNotificationHud (This : in out NullRTSLayer) return GameNotificationHud_Access;
   function getCurrentScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access;
   procedure setCurrentScrollSelectionForm (This : in out NullRTSLayer; currentScrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function getBuildingScrollSelectionForm (This : in out NullRTSLayer) return ScrollSelectionForm_Access;
   function getPlayerGameInput (This : in out NullRTSLayer) return PlayerGameInput_Access;
   procedure onEvent (This : in out NullRTSLayer; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onDestroyed (This : in out NullRTSLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class);
   procedure processTick (This : in out NullRTSLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getCapital (This : in out NullRTSLayer) return Capital_Access;
   function getRTSFormInput (This : in out NullRTSLayer) return RTSFormInput_Access;
   procedure add (This : in out NullRTSLayer; sound_Param : access Sound_Package.Sound'Class);
   function getPlayerOwnedRTSLayers (This : in out NullRTSLayer) return PlayerOwnedRTSLayers_Access;
   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullRTSLayer) return Boolean;

end org.allbinary.game.layer.NullRTSLayer_Package;


