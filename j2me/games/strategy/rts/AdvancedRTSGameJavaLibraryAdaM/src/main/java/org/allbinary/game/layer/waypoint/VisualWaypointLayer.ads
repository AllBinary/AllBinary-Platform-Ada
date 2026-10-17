-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package; use org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package;
with org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package; use org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable_Package;

package org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package is

   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;

   type VisualWaypointLayer is tagged;
   type VisualWaypointLayer_Access is access all VisualWaypointLayer'Class;
   type VisualWaypointLayer_Access_Array is array (Natural range <>) of VisualWaypointLayer_Access;
   type VisualWaypointLayer_Access_Array_Access is access all VisualWaypointLayer_Access_Array;

   type VisualWaypointLayer is new WaypointLayer with null record;

   procedure Initialize (This : in out VisualWaypointLayer'Class; remoteInfo_Param : access RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle'Class; x : Integer; y : Integer);
   function Create (remoteInfo_Param : access RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle'Class; x : Integer; y : Integer) return VisualWaypointLayer_Access;
   function createHudPaintable (This : in out VisualWaypointLayer) return SelectionHudPaintable_Access;
   function getHudPaintable (This : in out VisualWaypointLayer) return SelectionHudPaintable_Access;

end org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package;


