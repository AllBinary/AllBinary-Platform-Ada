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

limited with org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package;
package org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References is
   type VisualWaypointLayer_Access is access all org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package.VisualWaypointLayer'Class;
   type VisualWaypointLayer_Access_Array is array (Natural range <>) of VisualWaypointLayer_Access;
   type VisualWaypointLayer_Access_Array_Access is access all VisualWaypointLayer_Access_Array;
   type VisualWaypointLayer_Access_Array_Access_Array is array (Natural range <>) of VisualWaypointLayer_Access_Array_Access;
   type VisualWaypointLayer_Access_Array_Access_Array_Access is access all VisualWaypointLayer_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References;

with org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package_References;
limited with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;
limited with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;

package org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package is

   package SelectionHudPaintable_Package renames Standard.org.allbinary.game.layer.SelectionHudPaintable_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package Reference_Types is
   subtype SelectionHudPaintable_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access;
   use type SelectionHudPaintable_Access;
   subtype SelectionHudPaintable_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array;
   use type SelectionHudPaintable_Access_Array;
   subtype SelectionHudPaintable_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access;
   use type SelectionHudPaintable_Access_Array_Access;
   subtype SelectionHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array;
   use type SelectionHudPaintable_Access_Array_Access_Array;
   subtype SelectionHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array_Access;
   use type SelectionHudPaintable_Access_Array_Access_Array_Access;
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   use type AnimationInterfaceFactoryInterface_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access;
   use type ProceduralAnimationInterfaceFactoryInterface_Access;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package_References.ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type ProceduralAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   use type RemoteInfo_Access;
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   use type RemoteInfo_Access_Array;
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access;
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   use type RemoteInfo_Access_Array_Access_Array;
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VisualWaypointLayer_Access is org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References.VisualWaypointLayer_Access;
   function "=" (Left, Right : VisualWaypointLayer_Access) return Boolean renames org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References."=";
   subtype VisualWaypointLayer_Access_Array is org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References.VisualWaypointLayer_Access_Array;
   function "=" (Left, Right : VisualWaypointLayer_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References."=";
   subtype VisualWaypointLayer_Access_Array_Access is org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References.VisualWaypointLayer_Access_Array_Access;
   function "=" (Left, Right : VisualWaypointLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References."=";
   subtype VisualWaypointLayer_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References.VisualWaypointLayer_Access_Array_Access_Array;
   function "=" (Left, Right : VisualWaypointLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References."=";
   subtype VisualWaypointLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References.VisualWaypointLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VisualWaypointLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package_References."=";

   type VisualWaypointLayer is new WaypointLayer with null record;

   procedure Initialize (This : in out VisualWaypointLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer);
   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) return VisualWaypointLayer_Access;
   function createHudPaintable (This : in out VisualWaypointLayer) return SelectionHudPaintable_Access;
   function getHudPaintable (This : in out VisualWaypointLayer) return SelectionHudPaintable_Access;

end org.allbinary.game.layer.waypoint.VisualWaypointLayer_Package;


