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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.VehicleLayerInterface_Package; use org.allbinary.game.layer.VehicleLayerInterface_Package;
with org.allbinary.game.layer.VehicleProperties_Package; use org.allbinary.game.layer.VehicleProperties_Package;

package org.allbinary.game.layer.NullVehicleLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPositionTracking_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NullVehicleLayer is tagged;
   type NullVehicleLayer_Access is access all NullVehicleLayer'Class;
   type NullVehicleLayer_Access_Array is array (Natural range <>) of NullVehicleLayer_Access;
   type NullVehicleLayer_Access_Array_Access is access all NullVehicleLayer_Access_Array;

   type NullVehicleLayer is new VehicleLayerInterface with null record;
   NULL_VEHICLE_LAYER : NullVehicleLayer_Access;

   procedure Initialize (This : in out NullVehicleLayer'Class);
   function Create return NullVehicleLayer_Access;
   function getName (This : in out NullVehicleLayer) return Unbounded_String;
   function getGroupInterface (This : in out NullVehicleLayer) return Group_Access_Array_Access;
   procedure setPosition (This : in out NullVehicleLayer; x : Integer; y : Integer; z : Integer);
   function getHeight (This : in out NullVehicleLayer) return Integer;
   function getWidth (This : in out NullVehicleLayer) return Integer;
   function getHalfHeight (This : in out NullVehicleLayer) return Integer;
   function getHalfWidth (This : in out NullVehicleLayer) return Integer;
   function getXP (This : in out NullVehicleLayer) return Integer;
   function getYP (This : in out NullVehicleLayer) return Integer;
   function getZP (This : in out NullVehicleLayer) return Integer;
   function getX2 (This : in out NullVehicleLayer) return Integer;
   function getY2 (This : in out NullVehicleLayer) return Integer;
   function getZ2 (This : in out NullVehicleLayer) return Integer;
   function isVisible (This : in out NullVehicleLayer) return Boolean;
   procedure moveDXYZ (This : in out NullVehicleLayer; dx : Integer; dy : Integer; dz : Integer);
   procedure setVisible (This : in out NullVehicleLayer; visible : Boolean);
   function implmentsTickableInterface (This : in out NullVehicleLayer) return Boolean;
   function implmentsCollidableInterface (This : in out NullVehicleLayer) return Boolean;
   function implmentsGameInputInterface (This : in out NullVehicleLayer) return Boolean;
   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullVehicleLayer) return Boolean;
   function getType (This : in out NullVehicleLayer) return Integer;
   function getVehicleProperties (This : in out NullVehicleLayer) return VehicleProperties_Access;
   function getGameKeyEventList (This : in out NullVehicleLayer) return BasicArrayList_Access;
   function getSpeedBasicDecimal (This : in out NullVehicleLayer) return BasicDecimal_Access;
   function isReadyForExplosion (This : in out NullVehicleLayer) return Boolean;
   function getRotationAnimationInterface (This : in out NullVehicleLayer) return RotationAnimation_Access;
   procedure setRotationAnimationInterface (This : in out NullVehicleLayer; animationInterface_Param : access RotationAnimation_Package.RotationAnimation'Class);
   function isDestroyed (This : in out NullVehicleLayer) return Boolean;
   function isFinish (This : in out NullVehicleLayer) return Boolean;
   function getFinalPosition (This : in out NullVehicleLayer) return Integer;
   procedure handleFinish (This : in out NullVehicleLayer);
   function getGeographicMapCellPositionTracking (This : in out NullVehicleLayer) return GeographicMapCellPositionTracking_Access;
   function getGeographicMapCellHistoryArray (This : in out NullVehicleLayer) return GeographicMapCellHistory_Access_Array_Access;
   procedure setGeographicMapCellHistoryArray (This : in out NullVehicleLayer; geographicMapCellHistory : GeographicMapCellHistory_Access_Array_Access);
   procedure paint (This : in out NullVehicleLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out NullVehicleLayer; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.NullVehicleLayer_Package;


