-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.VehicleLayerInterface_Package; use org.allbinary.game.layer.VehicleLayerInterface_Package;

package org.allbinary.game.layer.NullVehicleLayer_Package is

   package RotationAnimation_Package renames org.allbinary.animation.RotationAnimation_Package;
   package Group_Package renames org.allbinary.game.identification.Group_Package;
   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;
   package GeographicMapCellHistory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPositionTracking_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type NullVehicleLayer is tagged;
   type NullVehicleLayer_Access is access all NullVehicleLayer'Class;
   type NullVehicleLayer_Access_Array is array (Natural range <>) of NullVehicleLayer_Access;
   type NullVehicleLayer_Access_Array_Access is access all NullVehicleLayer_Access_Array;

   type NullVehicleLayer is new VehicleLayerInterface with null record;
   NULL_VEHICLE_LAYER : NullVehicleLayer_Access;

   procedure Initialize (This : in out NullVehicleLayer'Class);
   function Create return NullVehicleLayer_Access;
   function getName (This : in out NullVehicleLayer) return Unbounded_String;
   procedure getName (This : in out NullVehicleLayer);
   function getGroupInterface (This : in out NullVehicleLayer) return Group_Access_Array_Access;
   procedure getGroupInterface (This : in out NullVehicleLayer);
   procedure setPosition (This : in out NullVehicleLayer; x : Integer; y : Integer; z : Integer);
   function getHeight (This : in out NullVehicleLayer) return Integer;
   procedure getHeight (This : in out NullVehicleLayer);
   function getWidth (This : in out NullVehicleLayer) return Integer;
   procedure getWidth (This : in out NullVehicleLayer);
   function getHalfHeight (This : in out NullVehicleLayer) return Integer;
   procedure getHalfHeight (This : in out NullVehicleLayer);
   function getHalfWidth (This : in out NullVehicleLayer) return Integer;
   procedure getHalfWidth (This : in out NullVehicleLayer);
   function getXP (This : in out NullVehicleLayer) return Integer;
   procedure getXP (This : in out NullVehicleLayer);
   function getYP (This : in out NullVehicleLayer) return Integer;
   procedure getYP (This : in out NullVehicleLayer);
   function getZP (This : in out NullVehicleLayer) return Integer;
   procedure getZP (This : in out NullVehicleLayer);
   function getX2 (This : in out NullVehicleLayer) return Integer;
   procedure getX2 (This : in out NullVehicleLayer);
   function getY2 (This : in out NullVehicleLayer) return Integer;
   procedure getY2 (This : in out NullVehicleLayer);
   function getZ2 (This : in out NullVehicleLayer) return Integer;
   procedure getZ2 (This : in out NullVehicleLayer);
   function isVisible (This : in out NullVehicleLayer) return Boolean;
   procedure isVisible (This : in out NullVehicleLayer);
   procedure moveDXYZ (This : in out NullVehicleLayer; dx : Integer; dy : Integer; dz : Integer);
   procedure setVisible (This : in out NullVehicleLayer; visible : Boolean);
   function implmentsTickableInterface (This : in out NullVehicleLayer) return Boolean;
   procedure implmentsTickableInterface (This : in out NullVehicleLayer);
   function implmentsCollidableInterface (This : in out NullVehicleLayer) return Boolean;
   procedure implmentsCollidableInterface (This : in out NullVehicleLayer);
   function implmentsGameInputInterface (This : in out NullVehicleLayer) return Boolean;
   procedure implmentsGameInputInterface (This : in out NullVehicleLayer);
   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullVehicleLayer) return Boolean;
   procedure implmentsArtificialIntelligenceCompositeInterface (This : in out NullVehicleLayer);
   function getType (This : in out NullVehicleLayer) return Integer;
   procedure getType (This : in out NullVehicleLayer);
   function getVehicleProperties (This : in out NullVehicleLayer) return VehicleProperties_Access;
   procedure getVehicleProperties (This : in out NullVehicleLayer);
   function getGameKeyEventList (This : in out NullVehicleLayer) return BasicArrayList_Access;
   procedure getGameKeyEventList (This : in out NullVehicleLayer);
   function getSpeedBasicDecimal (This : in out NullVehicleLayer) return BasicDecimal_Access;
   procedure getSpeedBasicDecimal (This : in out NullVehicleLayer);
   function isReadyForExplosion (This : in out NullVehicleLayer) return Boolean;
   procedure isReadyForExplosion (This : in out NullVehicleLayer);
   function getRotationAnimationInterface (This : in out NullVehicleLayer) return RotationAnimation_Access;
   procedure getRotationAnimationInterface (This : in out NullVehicleLayer);
   procedure setRotationAnimationInterface (This : in out NullVehicleLayer; animationInterface : RotationAnimation_Access);
   function isDestroyed (This : in out NullVehicleLayer) return Boolean;
   procedure isDestroyed (This : in out NullVehicleLayer);
   function isFinish (This : in out NullVehicleLayer) return Boolean;
   procedure isFinish (This : in out NullVehicleLayer);
   function getFinalPosition (This : in out NullVehicleLayer) return Integer;
   procedure getFinalPosition (This : in out NullVehicleLayer);
   procedure handleFinish (This : in out NullVehicleLayer);
   function getGeographicMapCellPositionTracking (This : in out NullVehicleLayer) return GeographicMapCellPositionTracking_Access;
   procedure getGeographicMapCellPositionTracking (This : in out NullVehicleLayer);
   function getGeographicMapCellHistoryArray (This : in out NullVehicleLayer) return GeographicMapCellHistory_Access_Array_Access;
   procedure getGeographicMapCellHistoryArray (This : in out NullVehicleLayer);
   procedure setGeographicMapCellHistoryArray (This : in out NullVehicleLayer; geographicMapCellHistory : GeographicMapCellHistory_Access_Array_Access);
   procedure paint (This : in out NullVehicleLayer; graphics : Graphics_Access);
   procedure paintThreed (This : in out NullVehicleLayer; graphics : Graphics_Access);

end org.allbinary.game.layer.NullVehicleLayer_Package;


