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


package body org.allbinary.game.layer.NullVehicleLayer_Package is

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
   end getName;

   function getGroupInterface (This : in out NullVehicleLayer) return Group_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getGroupInterface;

   procedure setPosition (This : in out NullVehicleLayer; x : Integer; y : Integer; z : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setPosition;

   function getHeight (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getHeight;

   function getWidth (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWidth;

   function getHalfHeight (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getHalfHeight;

   function getHalfWidth (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getHalfWidth;

   function getXP (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getXP;

   function getYP (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getYP;

   function getZP (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getZP;

   function getX2 (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getX2;

   function getY2 (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getY2;

   function getZ2 (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getZ2;

   function isVisible (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
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
   end implmentsTickableInterface;

   function implmentsCollidableInterface (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end implmentsCollidableInterface;

   function implmentsGameInputInterface (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end implmentsGameInputInterface;

   function implmentsArtificialIntelligenceCompositeInterface (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end implmentsArtificialIntelligenceCompositeInterface;

   function getType (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getType;

   function getVehicleProperties (This : in out NullVehicleLayer) return VehicleProperties_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getVehicleProperties;

   function getGameKeyEventList (This : in out NullVehicleLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getGameKeyEventList;

   function getSpeedBasicDecimal (This : in out NullVehicleLayer) return BasicDecimal_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getSpeedBasicDecimal;

   function isReadyForExplosion (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isReadyForExplosion;

   function getRotationAnimationInterface (This : in out NullVehicleLayer) return RotationAnimation_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getRotationAnimationInterface;

   procedure setRotationAnimationInterface (This : in out NullVehicleLayer; animationInterface_Param : access RotationAnimation_Package.RotationAnimation'Class) is
      animationInterface : constant RotationAnimation_Access := RotationAnimation_Access (animationInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setRotationAnimationInterface;

   function isDestroyed (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isDestroyed;

   function isFinish (This : in out NullVehicleLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isFinish;

   function getFinalPosition (This : in out NullVehicleLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getFinalPosition;

   --  throws Exception
   procedure handleFinish (This : in out NullVehicleLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end handleFinish;

   function getGeographicMapCellPositionTracking (This : in out NullVehicleLayer) return GeographicMapCellPositionTracking_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getGeographicMapCellPositionTracking;

   function getGeographicMapCellHistoryArray (This : in out NullVehicleLayer) return GeographicMapCellHistory_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
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


