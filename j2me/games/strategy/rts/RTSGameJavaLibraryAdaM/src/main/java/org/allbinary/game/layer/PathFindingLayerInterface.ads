-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
package org.allbinary.game.layer.PathFindingLayerInterface_Package_References is
   type PathFindingLayerInterface_Access is access all org.allbinary.game.layer.PathFindingLayerInterface_Package.PathFindingLayerInterface'Class;
   type PathFindingLayerInterface_Access_Array is array (Natural range <>) of PathFindingLayerInterface_Access;
   type PathFindingLayerInterface_Access_Array_Access is access all PathFindingLayerInterface_Access_Array;
   type PathFindingLayerInterface_Access_Array_Access_Array is array (Natural range <>) of PathFindingLayerInterface_Access_Array_Access;
   type PathFindingLayerInterface_Access_Array_Access_Array_Access is access all PathFindingLayerInterface_Access_Array_Access_Array;
   type PathFindingLayerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingLayerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingLayerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingLayerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingLayerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingLayerInterface_Access_Array_Access is (if Value /= null and then Value.all in PathFindingLayerInterface_Access_Array_Object'Class then PathFindingLayerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PathFindingLayerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingLayerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingLayerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingLayerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingLayerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingLayerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFindingLayerInterface_Access_Array_Access_Array_Object'Class then PathFindingLayerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.PathFindingLayerInterface_Package_References;

with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package; use org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package; use org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package; use org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References;
limited with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package_References;
limited with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package_References;

package org.allbinary.game.layer.PathFindingLayerInterface_Package is

   package DestroyableInterface_Package renames Standard.org.allbinary.game.combat.destroy.DestroyableInterface_Package;
   package GroupInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package WaypointLayerInterface_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionAreaBase_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access;
   use type GeographicMapCellPositionAreaBase_Access;
   subtype GeographicMapCellPositionAreaBase_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array;
   use type GeographicMapCellPositionAreaBase_Access_Array;
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access;
   use type GeographicMapCellPositionAreaBase_Access_Array_Access;
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
   use type GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access;
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
   subtype RTSLayer2LogHelper_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access;
   use type RTSLayer2LogHelper_Access;
   subtype RTSLayer2LogHelper_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array;
   use type RTSLayer2LogHelper_Access_Array;
   subtype RTSLayer2LogHelper_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access;
   use type RTSLayer2LogHelper_Access_Array_Access;
   subtype RTSLayer2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array;
   use type RTSLayer2LogHelper_Access_Array_Access_Array;
   subtype RTSLayer2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   use type RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PathFindingLayerInterface is interface and WaypointLayerInterface and GameKeyEventSourceInterface and GroupInterfaceCompositeInterface and DestroyableInterface;
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   function Java_Box (Value : PathFindingLayerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingLayerInterface_Access_Array (Value : access Java_Object'Class) return PathFindingLayerInterface_Access_Array_Access renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References.Java_Unbox_PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   function Java_Box (Value : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingLayerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFindingLayerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References.Java_Unbox_PathFindingLayerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PathFindingLayerInterface (Value : PathFindingLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getEndGeographicMapCellPositionList (This : in out PathFindingLayerInterface) return BasicArrayList_Access is abstract;
   function shouldHandleStartSameAsEnd (This : in out PathFindingLayerInterface) return Boolean is abstract;
   function getGeographicMapCellPositionArea (This : in out PathFindingLayerInterface) return GeographicMapCellPositionAreaBase_Access is abstract;
   function getHudPaintable (This : in out PathFindingLayerInterface) return SelectionHudPaintable_Access is abstract;
   procedure handleCost (This : in out PathFindingLayerInterface; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is abstract;
   function getParentLayer (This : in out PathFindingLayerInterface) return PathFindingLayerInterface_Access is abstract;
   function getRTSLayer2LogHelper (This : in out PathFindingLayerInterface) return RTSLayer2LogHelper_Access is abstract;
   procedure setTarget (This : in out PathFindingLayerInterface; targetGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is abstract;

end org.allbinary.game.layer.PathFindingLayerInterface_Package;


