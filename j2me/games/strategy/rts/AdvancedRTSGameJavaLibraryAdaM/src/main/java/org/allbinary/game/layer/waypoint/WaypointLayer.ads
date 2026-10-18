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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;

package org.allbinary.game.layer.waypoint.WaypointLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;

   type WaypointLayer is tagged;
   type WaypointLayer_Access is access all WaypointLayer'Class;
   type WaypointLayer_Access_Array is array (Natural range <>) of WaypointLayer_Access;
   type WaypointLayer_Access_Array_Access is access all WaypointLayer_Access_Array;
   type WaypointLayer_Access_Array_Access_Array is array (Natural range <>) of WaypointLayer_Access_Array_Access;
   type WaypointLayer_Access_Array_Access_Array_Access is access all WaypointLayer_Access_Array_Access_Array;

   type WaypointLayer is new AdvancedRTSGameLayer with null record;

   procedure Initialize (This : in out WaypointLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer);
   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) return WaypointLayer_Access;
   procedure construct (This : in out WaypointLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class);
   procedure paint (This : in out WaypointLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure processTick (This : in out WaypointLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure damage (This : in out WaypointLayer; damage : Integer; damageType : Integer);
   function getDamage (This : in out WaypointLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out WaypointLayer; damageType : Integer);
   procedure setDestroyed (This : in out WaypointLayer; destroyed : Boolean);
   function getType (This : in out WaypointLayer) return Integer;
   function getStaticType return Integer;
   function isSelfUpgradeable (This : in out WaypointLayer) return Boolean;

end org.allbinary.game.layer.waypoint.WaypointLayer_Package;


