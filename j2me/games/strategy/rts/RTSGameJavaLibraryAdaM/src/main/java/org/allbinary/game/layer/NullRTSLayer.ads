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

with AllBinary_Java;
limited with org.allbinary.game.layer.NullRTSLayer_Package;
package org.allbinary.game.layer.NullRTSLayer_Package_References is
   type NullRTSLayer_Access is access all org.allbinary.game.layer.NullRTSLayer_Package.NullRTSLayer'Class;
   type NullRTSLayer_Access_Array is array (Natural range <>) of NullRTSLayer_Access;
   type NullRTSLayer_Access_Array_Access is access all NullRTSLayer_Access_Array;
   type NullRTSLayer_Access_Array_Access_Array is array (Natural range <>) of NullRTSLayer_Access_Array_Access;
   type NullRTSLayer_Access_Array_Access_Array_Access is access all NullRTSLayer_Access_Array_Access_Array;
   type NullRTSLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRTSLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRTSLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRTSLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRTSLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRTSLayer_Access_Array_Access is (if Value /= null and then Value.all in NullRTSLayer_Access_Array_Object'Class then NullRTSLayer_Access_Array_Object'Class (Value.all).Value else null);
   type NullRTSLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRTSLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRTSLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRTSLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRTSLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRTSLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRTSLayer_Access_Array_Access_Array_Object'Class then NullRTSLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.NullRTSLayer_Package_References;

with org.allbinary.game.layer.NullRTSLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References;
limited with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;
limited with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.form.RTSFormInput_Package_References;
limited with org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.capital.Capital_Package_References;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
limited with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References;

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
   package Reference_Types is
   subtype GameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access;
   use type GameNotificationHud_Access;
   subtype GameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array;
   use type GameNotificationHud_Access_Array;
   subtype GameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access;
   use type GameNotificationHud_Access_Array_Access;
   subtype GameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array;
   use type GameNotificationHud_Access_Array_Access_Array;
   subtype GameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array_Access;
   use type GameNotificationHud_Access_Array_Access_Array_Access;
   subtype DestroyedEvent_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access;
   use type DestroyedEvent_Access;
   subtype DestroyedEvent_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array;
   use type DestroyedEvent_Access_Array;
   subtype DestroyedEvent_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access;
   subtype DestroyedEvent_Access_Array_Access_Array is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array;
   use type DestroyedEvent_Access_Array_Access_Array;
   subtype DestroyedEvent_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.event.DestroyedEvent_Package_References.DestroyedEvent_Access_Array_Access_Array_Access;
   use type DestroyedEvent_Access_Array_Access_Array_Access;
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   subtype RTSFormInput_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access;
   use type RTSFormInput_Access;
   subtype RTSFormInput_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array;
   use type RTSFormInput_Access_Array;
   subtype RTSFormInput_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access;
   use type RTSFormInput_Access_Array_Access;
   subtype RTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array;
   use type RTSFormInput_Access_Array_Access_Array;
   subtype RTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array_Access;
   use type RTSFormInput_Access_Array_Access_Array_Access;
   subtype Capital_Access is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access;
   use type Capital_Access;
   subtype Capital_Access_Array is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array;
   use type Capital_Access_Array;
   subtype Capital_Access_Array_Access is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array_Access;
   use type Capital_Access_Array_Access;
   subtype Capital_Access_Array_Access_Array is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array_Access_Array;
   use type Capital_Access_Array_Access_Array;
   subtype Capital_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.Capital_Package_References.Capital_Access_Array_Access_Array_Access;
   use type Capital_Access_Array_Access_Array_Access;
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   use type ScrollSelectionForm_Access;
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   use type ScrollSelectionForm_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access;
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   use type ScrollSelectionForm_Access_Array_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access_Array_Access;
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
   subtype PlayerOwnedRTSLayers_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access;
   use type PlayerOwnedRTSLayers_Access;
   subtype PlayerOwnedRTSLayers_Access_Array is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array;
   use type PlayerOwnedRTSLayers_Access_Array;
   subtype PlayerOwnedRTSLayers_Access_Array_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access;
   use type PlayerOwnedRTSLayers_Access_Array_Access;
   subtype PlayerOwnedRTSLayers_Access_Array_Access_Array is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access_Array;
   use type PlayerOwnedRTSLayers_Access_Array_Access_Array;
   subtype PlayerOwnedRTSLayers_Access_Array_Access_Array_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   use type PlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullRTSLayer_Access is org.allbinary.game.layer.NullRTSLayer_Package_References.NullRTSLayer_Access;
   function "=" (Left, Right : NullRTSLayer_Access) return Boolean renames org.allbinary.game.layer.NullRTSLayer_Package_References."=";
   subtype NullRTSLayer_Access_Array is org.allbinary.game.layer.NullRTSLayer_Package_References.NullRTSLayer_Access_Array;
   function "=" (Left, Right : NullRTSLayer_Access_Array) return Boolean renames org.allbinary.game.layer.NullRTSLayer_Package_References."=";
   subtype NullRTSLayer_Access_Array_Access is org.allbinary.game.layer.NullRTSLayer_Package_References.NullRTSLayer_Access_Array_Access;
   function "=" (Left, Right : NullRTSLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.NullRTSLayer_Package_References."=";
   function Java_Box (Value : NullRTSLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.NullRTSLayer_Package_References.Java_Box;
   function Java_Unbox_NullRTSLayer_Access_Array (Value : access Java_Object'Class) return NullRTSLayer_Access_Array_Access renames org.allbinary.game.layer.NullRTSLayer_Package_References.Java_Unbox_NullRTSLayer_Access_Array;
   subtype NullRTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.NullRTSLayer_Package_References.NullRTSLayer_Access_Array_Access_Array;
   function "=" (Left, Right : NullRTSLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.NullRTSLayer_Package_References."=";
   subtype NullRTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.NullRTSLayer_Package_References.NullRTSLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRTSLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.NullRTSLayer_Package_References."=";
   function Java_Box (Value : NullRTSLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.NullRTSLayer_Package_References.Java_Box;
   function Java_Unbox_NullRTSLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRTSLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.NullRTSLayer_Package_References.Java_Unbox_NullRTSLayer_Access_Array_Access_Array;

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


