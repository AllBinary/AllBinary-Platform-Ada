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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package; use org.allbinary.game.layer.RTSLayer2LogHelper_Package;

package org.allbinary.game.layer.PathFindingLayerInterface_Package is

   package DestroyableInterface_Package renames Standard.org.allbinary.game.combat.destroy.DestroyableInterface_Package;
   package GroupInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package WaypointLayerInterface_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PathFindingLayerInterface is interface and WaypointLayerInterface and GameKeyEventSourceInterface and GroupInterfaceCompositeInterface and DestroyableInterface;
   type PathFindingLayerInterface_Access is access all PathFindingLayerInterface'Class;
   type PathFindingLayerInterface_Access_Array is array (Natural range <>) of PathFindingLayerInterface_Access;
   type PathFindingLayerInterface_Access_Array_Access is access all PathFindingLayerInterface_Access_Array;
   type PathFindingLayerInterface_Access_Array_Access_Array is array (Natural range <>) of PathFindingLayerInterface_Access_Array_Access;
   type PathFindingLayerInterface_Access_Array_Access_Array_Access is access all PathFindingLayerInterface_Access_Array_Access_Array;
   function getEndGeographicMapCellPositionList (This : in out PathFindingLayerInterface) return BasicArrayList_Access is abstract;
   function shouldHandleStartSameAsEnd (This : in out PathFindingLayerInterface) return Boolean is abstract;
   function getGeographicMapCellPositionArea (This : in out PathFindingLayerInterface) return GeographicMapCellPositionAreaBase_Access is abstract;
   function getHudPaintable (This : in out PathFindingLayerInterface) return SelectionHudPaintable_Access is abstract;
   procedure handleCost (This : in out PathFindingLayerInterface; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is abstract;
   function getParentLayer (This : in out PathFindingLayerInterface) return PathFindingLayerInterface_Access is abstract;
   function getRTSLayer2LogHelper (This : in out PathFindingLayerInterface) return RTSLayer2LogHelper_Access is abstract;
   procedure setTarget (This : in out PathFindingLayerInterface; targetGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is abstract;

end org.allbinary.game.layer.PathFindingLayerInterface_Package;


