-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
package org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References is
   type RTSPlayerLayerInterface_Access is access all org.allbinary.game.layer.RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class;
   type RTSPlayerLayerInterface_Access_Array is array (Natural range <>) of RTSPlayerLayerInterface_Access;
   type RTSPlayerLayerInterface_Access_Array_Access is access all RTSPlayerLayerInterface_Access_Array;
   type RTSPlayerLayerInterface_Access_Array_Access_Array is array (Natural range <>) of RTSPlayerLayerInterface_Access_Array_Access;
   type RTSPlayerLayerInterface_Access_Array_Access_Array_Access is access all RTSPlayerLayerInterface_Access_Array_Access_Array;
   type RTSPlayerLayerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSPlayerLayerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSPlayerLayerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSPlayerLayerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSPlayerLayerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSPlayerLayerInterface_Access_Array_Access is (if Value /= null and then Value.all in RTSPlayerLayerInterface_Access_Array_Object'Class then RTSPlayerLayerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type RTSPlayerLayerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSPlayerLayerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSPlayerLayerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSPlayerLayerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSPlayerLayerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSPlayerLayerInterface_Access_Array_Access_Array_Object'Class then RTSPlayerLayerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;

with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package;
with org.allbinary.game.input.BuildMenuCompositeInterface_Package; use org.allbinary.game.input.BuildMenuCompositeInterface_Package;
limited with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.form.RTSFormInput_Package_References;
limited with org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.capital.Capital_Package_References;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
limited with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References;

package org.allbinary.game.layer.RTSPlayerLayerInterface_Package is

   package GameNotificationHudCompositeInterface_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package;
   package BuildMenuCompositeInterface_Package renames Standard.org.allbinary.game.input.BuildMenuCompositeInterface_Package;
   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package Capital_Package renames Standard.org.allbinary.game.layer.capital.Capital_Package;
   package DestroyedEventListenerInterface_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package Reference_Types is
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


   type RTSPlayerLayerInterface is interface and GameNotificationHudCompositeInterface and BuildMenuCompositeInterface and PlayerGameInputCompositeInterface and DestroyedEventListenerInterface and TickableInterface and PathFindingLayerInterface;
   subtype RTSPlayerLayerInterface_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   function Java_Box (Value : RTSPlayerLayerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.Java_Box;
   function Java_Unbox_RTSPlayerLayerInterface_Access_Array (Value : access Java_Object'Class) return RTSPlayerLayerInterface_Access_Array_Access renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.Java_Unbox_RTSPlayerLayerInterface_Access_Array;
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   function Java_Box (Value : RTSPlayerLayerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.Java_Box;
   function Java_Unbox_RTSPlayerLayerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSPlayerLayerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.Java_Unbox_RTSPlayerLayerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_RTSPlayerLayerInterface (Value : RTSPlayerLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getCapital (This : in out RTSPlayerLayerInterface) return Capital_Access is abstract;
   function getRTSFormInput (This : in out RTSPlayerLayerInterface) return RTSFormInput_Access is abstract;
   procedure add (This : in out RTSPlayerLayerInterface; sound_Param : access Sound_Package.Sound'Class) is abstract;
   function getPlayerOwnedRTSLayers (This : in out RTSPlayerLayerInterface) return PlayerOwnedRTSLayers_Access is abstract;
   function implmentsArtificialIntelligenceCompositeInterface (This : in out RTSPlayerLayerInterface) return Boolean is abstract;

end org.allbinary.game.layer.RTSPlayerLayerInterface_Package;


