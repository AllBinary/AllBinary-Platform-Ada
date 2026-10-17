--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package; use org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;

package org.allbinary.game.layer.VehicleLayerInterface_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package RotationAnimation_Package renames org.allbinary.animation.RotationAnimation_Package;
   package LayerInterface_Package renames org.allbinary.layer.LayerInterface_Package;
   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;
   package GeographicMapCellHistory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPositionTracking_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;

   type VehicleLayerInterface is interface and LayerInterface and VehiclePropertiesCompositeInterface;
   type VehicleLayerInterface_Access is access all VehicleLayerInterface'Class;
   type VehicleLayerInterface_Access_Array is array (Natural range <>) of VehicleLayerInterface_Access;
   type VehicleLayerInterface_Access_Array_Access is access all VehicleLayerInterface_Access_Array;
   function getGameKeyEventList (This : in out VehicleLayerInterface) return BasicArrayList_Access is abstract;
   function getSpeedBasicDecimal (This : in out VehicleLayerInterface) return BasicDecimal_Access is abstract;
   function isReadyForExplosion (This : in out VehicleLayerInterface) return Boolean is abstract;
   function getRotationAnimationInterface (This : in out VehicleLayerInterface) return RotationAnimation_Access is abstract;
   procedure setRotationAnimationInterface (This : in out VehicleLayerInterface; animationInterface : RotationAnimation_Access) is abstract;
   function isDestroyed (This : in out VehicleLayerInterface) return Boolean is abstract;
   function isFinish (This : in out VehicleLayerInterface) return Boolean is abstract;
   function getFinalPosition (This : in out VehicleLayerInterface) return Integer is abstract;
   procedure handleFinish (This : in out VehicleLayerInterface) is abstract;
   function getGeographicMapCellPositionTracking (This : in out VehicleLayerInterface) return GeographicMapCellPositionTracking_Access is abstract;
   function getGeographicMapCellHistoryArray (This : in out VehicleLayerInterface) return GeographicMapCellHistory_Access_Array_Access is abstract;
   procedure setGeographicMapCellHistoryArray (This : in out VehicleLayerInterface; geographicMapCellHistory : GeographicMapCellHistory_Access_Array_Access) is abstract;

end org.allbinary.game.layer.VehicleLayerInterface_Package;


