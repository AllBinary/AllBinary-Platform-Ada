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
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package; use org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package; use org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintable_Package;

package org.allbinary.game.layer.geological.resources.ResourceWaypointLayer_Package is

   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package WaypointLayer_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayer_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;

   type ResourceWaypointLayer is tagged;
   type ResourceWaypointLayer_Access is access all ResourceWaypointLayer'Class;
   type ResourceWaypointLayer_Access_Array is array (Natural range <>) of ResourceWaypointLayer_Access;
   type ResourceWaypointLayer_Access_Array_Access is access all ResourceWaypointLayer_Access_Array;

   type ResourceWaypointLayer is new WaypointLayer with null record;

   procedure Initialize (This : in out ResourceWaypointLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer);
   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) return ResourceWaypointLayer_Access;
   function createHudPaintable (This : in out ResourceWaypointLayer) return SelectionHudPaintable_Access;
   function getHudPaintable (This : in out ResourceWaypointLayer) return SelectionHudPaintable_Access;

end org.allbinary.game.layer.geological.resources.ResourceWaypointLayer_Package;


