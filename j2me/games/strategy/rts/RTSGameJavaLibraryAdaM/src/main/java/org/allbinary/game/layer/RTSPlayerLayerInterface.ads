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
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package; use org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;

package org.allbinary.game.layer.RTSPlayerLayerInterface_Package is

   package GameNotificationHudCompositeInterface_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package;
   package BuildMenuCompositeInterface_Package renames Standard.org.allbinary.game.input.BuildMenuCompositeInterface_Package;
   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package Capital_Package renames Standard.org.allbinary.game.layer.capital.Capital_Package;
   package DestroyedEventListenerInterface_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;

   type RTSPlayerLayerInterface is interface and GameNotificationHudCompositeInterface and BuildMenuCompositeInterface and PlayerGameInputCompositeInterface and DestroyedEventListenerInterface and TickableInterface and PathFindingLayerInterface;
   type RTSPlayerLayerInterface_Access is access all RTSPlayerLayerInterface'Class;
   type RTSPlayerLayerInterface_Access_Array is array (Natural range <>) of RTSPlayerLayerInterface_Access;
   type RTSPlayerLayerInterface_Access_Array_Access is access all RTSPlayerLayerInterface_Access_Array;
   function getCapital (This : in out RTSPlayerLayerInterface) return Capital_Access is abstract;
   function getRTSFormInput (This : in out RTSPlayerLayerInterface) return RTSFormInput_Access is abstract;
   procedure add (This : in out RTSPlayerLayerInterface; sound_Param : access Sound'Class) is abstract;
   function getPlayerOwnedRTSLayers (This : in out RTSPlayerLayerInterface) return PlayerOwnedRTSLayers_Access is abstract;
   function implmentsArtificialIntelligenceCompositeInterface (This : in out RTSPlayerLayerInterface) return Boolean is abstract;

end org.allbinary.game.layer.RTSPlayerLayerInterface_Package;


