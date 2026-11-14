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

with AllBinary_Java;
limited with org.allbinary.game.layer.NullVehicleLayer_Package;
package org.allbinary.game.layer.NullVehicleLayer_Package_References is
   type NullVehicleLayer_Access is access all org.allbinary.game.layer.NullVehicleLayer_Package.NullVehicleLayer'Class;
   type NullVehicleLayer_Access_Array is array (Natural range <>) of NullVehicleLayer_Access;
   type NullVehicleLayer_Access_Array_Access is access all NullVehicleLayer_Access_Array;
   type NullVehicleLayer_Access_Array_Access_Array is array (Natural range <>) of NullVehicleLayer_Access_Array_Access;
   type NullVehicleLayer_Access_Array_Access_Array_Access is access all NullVehicleLayer_Access_Array_Access_Array;
   type NullVehicleLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullVehicleLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : NullVehicleLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullVehicleLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullVehicleLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullVehicleLayer_Access_Array_Access is (if Value /= null and then Value.all in NullVehicleLayer_Access_Array_Object'Class then NullVehicleLayer_Access_Array_Object'Class (Value.all).Value else null);
   type NullVehicleLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullVehicleLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullVehicleLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullVehicleLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullVehicleLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullVehicleLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullVehicleLayer_Access_Array_Access_Array_Object'Class then NullVehicleLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.NullVehicleLayer_Package_References;

with org.allbinary.game.layer.NullVehicleLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.VehicleLayerInterface_Package; use org.allbinary.game.layer.VehicleLayerInterface_Package;
limited with org.allbinary.game.layer.VehicleProperties_Package;
with org.allbinary.game.layer.VehicleProperties_Package_References;

package org.allbinary.game.layer.NullVehicleLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPositionTracking_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   use type RotationAnimation_Access;
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   use type RotationAnimation_Access_Array;
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access;
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   use type RotationAnimation_Access_Array_Access_Array;
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access_Array_Access;
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
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   use type GeographicMapCellHistory_Access;
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   use type GeographicMapCellHistory_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access;
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   use type GeographicMapCellHistory_Access_Array_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionTracking_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access;
   use type GeographicMapCellPositionTracking_Access;
   subtype GeographicMapCellPositionTracking_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array;
   use type GeographicMapCellPositionTracking_Access_Array;
   subtype GeographicMapCellPositionTracking_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access;
   use type GeographicMapCellPositionTracking_Access_Array_Access;
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array;
   use type GeographicMapCellPositionTracking_Access_Array_Access_Array;
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
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
   subtype VehicleProperties_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access;
   use type VehicleProperties_Access;
   subtype VehicleProperties_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array;
   use type VehicleProperties_Access_Array;
   subtype VehicleProperties_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access;
   use type VehicleProperties_Access_Array_Access;
   subtype VehicleProperties_Access_Array_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array;
   use type VehicleProperties_Access_Array_Access_Array;
   subtype VehicleProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array_Access;
   use type VehicleProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullVehicleLayer_Access is org.allbinary.game.layer.NullVehicleLayer_Package_References.NullVehicleLayer_Access;
   function "=" (Left, Right : NullVehicleLayer_Access) return Boolean renames org.allbinary.game.layer.NullVehicleLayer_Package_References."=";
   subtype NullVehicleLayer_Access_Array is org.allbinary.game.layer.NullVehicleLayer_Package_References.NullVehicleLayer_Access_Array;
   function "=" (Left, Right : NullVehicleLayer_Access_Array) return Boolean renames org.allbinary.game.layer.NullVehicleLayer_Package_References."=";
   subtype NullVehicleLayer_Access_Array_Access is org.allbinary.game.layer.NullVehicleLayer_Package_References.NullVehicleLayer_Access_Array_Access;
   function "=" (Left, Right : NullVehicleLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.NullVehicleLayer_Package_References."=";
   function Java_Box (Value : NullVehicleLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.NullVehicleLayer_Package_References.Java_Box;
   function Java_Unbox_NullVehicleLayer_Access_Array (Value : access Java_Object'Class) return NullVehicleLayer_Access_Array_Access renames org.allbinary.game.layer.NullVehicleLayer_Package_References.Java_Unbox_NullVehicleLayer_Access_Array;
   subtype NullVehicleLayer_Access_Array_Access_Array is org.allbinary.game.layer.NullVehicleLayer_Package_References.NullVehicleLayer_Access_Array_Access_Array;
   function "=" (Left, Right : NullVehicleLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.NullVehicleLayer_Package_References."=";
   subtype NullVehicleLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.NullVehicleLayer_Package_References.NullVehicleLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullVehicleLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.NullVehicleLayer_Package_References."=";
   function Java_Box (Value : NullVehicleLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.NullVehicleLayer_Package_References.Java_Box;
   function Java_Unbox_NullVehicleLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return NullVehicleLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.NullVehicleLayer_Package_References.Java_Unbox_NullVehicleLayer_Access_Array_Access_Array;

   type NullVehicleLayer is new Java_Object and VehicleLayerInterface with null record;
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


