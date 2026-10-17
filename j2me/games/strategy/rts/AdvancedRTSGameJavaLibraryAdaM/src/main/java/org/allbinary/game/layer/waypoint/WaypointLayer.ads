-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package; use org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.media.audio.AttackSound_Package; use org.allbinary.media.audio.AttackSound_Package;

package org.allbinary.game.layer.waypoint.WaypointLayer_Package is

   package AnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package Health_Package renames org.allbinary.game.health.Health_Package;
   package Group_Package renames org.allbinary.game.identification.Group_Package;
   package NullRTSFormInputFactory_Package renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package AdvancedRTSGameLayer_Package renames org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package AdvancedRTSProperties_Package renames org.allbinary.game.layer.AdvancedRTSProperties_Package;
   package PathFindingLayerInterface_Package renames org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package TileLayerPositionIntoViewPosition_Package renames org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package RTSPlayerLayerInterface_Package renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package RemoteInfo_Package renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package AttackSound_Package renames org.allbinary.media.audio.AttackSound_Package;

   type WaypointLayer is tagged;
   type WaypointLayer_Access is access all WaypointLayer'Class;
   type WaypointLayer_Access_Array is array (Natural range <>) of WaypointLayer_Access;
   type WaypointLayer_Access_Array_Access is access all WaypointLayer_Access_Array;

   type WaypointLayer is new AdvancedRTSGameLayer with null record;

   procedure Initialize (This : in out WaypointLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer);
   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) return WaypointLayer_Access;
   procedure construct (This : in out WaypointLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access);
   procedure paint (This : in out WaypointLayer; graphics : Graphics_Access);
   procedure processTick (This : in out WaypointLayer; allBinaryLayerManager : AllBinaryLayerManager_Access);
   procedure damage (This : in out WaypointLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out WaypointLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out WaypointLayer; damageType : Integer);
   procedure setDestroyed (This : in out WaypointLayer; destroyed : Boolean);
   function getType (This : in out WaypointLayer) return Integer;
   procedure getType (This : in out WaypointLayer);
   function getStaticType return Integer;
   procedure getStaticType;
   function isSelfUpgradeable (This : in out WaypointLayer) return Boolean;
   procedure isSelfUpgradeable (This : in out WaypointLayer);

end org.allbinary.game.layer.waypoint.WaypointLayer_Package;


