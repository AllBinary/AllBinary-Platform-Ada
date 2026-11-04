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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.VehicleProperties_Package; use org.allbinary.game.layer.VehicleProperties_Package;
with org.allbinary.game.layer.VehicleProperties_Package_References;
with org.allbinary.game.layer.VehicleFrictionProperties_Package;
with org.allbinary.game.layer.VehicleProperties_Package;
with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;

package body org.allbinary.game.layer.NullVehicleLayer_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   function "=" (Left, Right : RotationAnimation_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimation_Package_References."=";
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   function "=" (Left, Right : BasicDecimal_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype VehicleProperties_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access;
   function "=" (Left, Right : VehicleProperties_Access) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array;
   function "=" (Left, Right : VehicleProperties_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access;
   function "=" (Left, Right : VehicleProperties_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : VehicleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VehicleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   procedure Initialize_Fields (This : in out NullVehicleLayer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullVehicleLayer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullVehicleLayer_Access is
      This : constant NullVehicleLayer_Access := new NullVehicleLayer;
   begin
      NullVehicleLayer_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullVehicleLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getName;

   function getGroupInterface (This : in out NullVehicleLayer) return Group_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGroupInterface;

   procedure setPosition (This : in out NullVehicleLayer; x : Integer; y : Integer; z : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setPosition;

   function getHeight (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getHeight;

   function getWidth (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getWidth;

   function getHalfHeight (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getHalfHeight;

   function getHalfWidth (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getHalfWidth;

   function getXP (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getXP;

   function getYP (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getYP;

   function getZP (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getZP;

   function getX2 (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getX2;

   function getY2 (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getY2;

   function getZ2 (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getZ2;

   function isVisible (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isVisible;

   procedure moveDXYZ (This : in out NullVehicleLayer; dx : Integer; dy : Integer; dz : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end moveDXYZ;

   procedure setVisible (This : in out NullVehicleLayer; visible : Boolean) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setVisible;

   function implmentsTickableInterface (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end implmentsTickableInterface;

   function implmentsCollidableInterface (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end implmentsCollidableInterface;

   function implmentsGameInputInterface (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end implmentsGameInputInterface;

   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end implmentsArtificialIntelligenceCompositeInterface;

   function getType (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getType;

   function getVehicleProperties (This : in out NullVehicleLayer) return VehicleProperties_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getVehicleProperties;

   function getGameKeyEventList (This : in out NullVehicleLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGameKeyEventList;

   function getSpeedBasicDecimal (This : in out NullVehicleLayer) return BasicDecimal_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getSpeedBasicDecimal;

   function isReadyForExplosion (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isReadyForExplosion;

   function getRotationAnimationInterface (This : in out NullVehicleLayer) return RotationAnimation_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRotationAnimationInterface;

   procedure setRotationAnimationInterface (This : in out NullVehicleLayer; animationInterface_Param : access RotationAnimation_Package.RotationAnimation'Class) is
      animationInterface : constant RotationAnimation_Access := RotationAnimation_Access (animationInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setRotationAnimationInterface;

   function isDestroyed (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isDestroyed;

   function isFinish (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isFinish;

   function getFinalPosition (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getFinalPosition;

   --  throws Exception
   procedure handleFinish (This : in out NullVehicleLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end handleFinish;

   function getGeographicMapCellPositionTracking (This : in out NullVehicleLayer) return GeographicMapCellPositionTracking_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGeographicMapCellPositionTracking;

   function getGeographicMapCellHistoryArray (This : in out NullVehicleLayer) return GeographicMapCellHistory_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGeographicMapCellHistoryArray;

   procedure setGeographicMapCellHistoryArray (This : in out NullVehicleLayer; geographicMapCellHistory : GeographicMapCellHistory_Access_Array_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setGeographicMapCellHistoryArray;

   procedure paint (This : in out NullVehicleLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure paintThreed (This : in out NullVehicleLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

begin
   null;
   NULL_VEHICLE_LAYER := NullVehicleLayer_Package.Create;

end org.allbinary.game.layer.NullVehicleLayer_Package;


