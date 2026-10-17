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
      Initialize (This.all);
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

   procedure setRotationAnimationInterface (This : in out NullVehicleLayer; animationInterface : RotationAnimation_Access) is
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

   procedure paint (This : in out NullVehicleLayer; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   procedure paintThreed (This : in out NullVehicleLayer; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

   procedure getName (This : in out NullVehicleLayer) is
      Java_Result : constant Unbounded_String := NullVehicleLayer'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getGroupInterface (This : in out NullVehicleLayer) is
      Java_Result : constant Group_Access_Array_Access := NullVehicleLayer'Class (This).getGroupInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupInterface;

   procedure getHeight (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure getWidth (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHalfHeight (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getHalfHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHalfHeight;

   procedure getHalfWidth (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getHalfWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHalfWidth;

   procedure getXP (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getXP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXP;

   procedure getYP (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getYP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getYP;

   procedure getZP (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getZP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getZP;

   procedure getX2 (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getX2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getX2;

   procedure getY2 (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getY2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getY2;

   procedure getZ2 (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getZ2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getZ2;

   procedure isVisible (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).isVisible;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isVisible;

   procedure implmentsTickableInterface (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).implmentsTickableInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsTickableInterface;

   procedure implmentsCollidableInterface (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).implmentsCollidableInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsCollidableInterface;

   procedure implmentsGameInputInterface (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).implmentsGameInputInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsGameInputInterface;

   procedure implmentsArtificialIntelligenceCompositeInterface (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).implmentsArtificialIntelligenceCompositeInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsArtificialIntelligenceCompositeInterface;

   procedure getType (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

   procedure getVehicleProperties (This : in out NullVehicleLayer) is
      Java_Result : constant VehicleProperties_Access := NullVehicleLayer'Class (This).getVehicleProperties;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVehicleProperties;

   procedure getGameKeyEventList (This : in out NullVehicleLayer) is
      Java_Result : constant BasicArrayList_Access := NullVehicleLayer'Class (This).getGameKeyEventList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameKeyEventList;

   procedure getSpeedBasicDecimal (This : in out NullVehicleLayer) is
      Java_Result : constant BasicDecimal_Access := NullVehicleLayer'Class (This).getSpeedBasicDecimal;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSpeedBasicDecimal;

   procedure isReadyForExplosion (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).isReadyForExplosion;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isReadyForExplosion;

   procedure getRotationAnimationInterface (This : in out NullVehicleLayer) is
      Java_Result : constant RotationAnimation_Access := NullVehicleLayer'Class (This).getRotationAnimationInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotationAnimationInterface;

   procedure isDestroyed (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).isDestroyed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDestroyed;

   procedure isFinish (This : in out NullVehicleLayer) is
      Java_Result : constant Boolean := NullVehicleLayer'Class (This).isFinish;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFinish;

   procedure getFinalPosition (This : in out NullVehicleLayer) is
      Java_Result : constant Integer := NullVehicleLayer'Class (This).getFinalPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFinalPosition;

   procedure getGeographicMapCellPositionTracking (This : in out NullVehicleLayer) is
      Java_Result : constant GeographicMapCellPositionTracking_Access := NullVehicleLayer'Class (This).getGeographicMapCellPositionTracking;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionTracking;

   procedure getGeographicMapCellHistoryArray (This : in out NullVehicleLayer) is
      Java_Result : constant GeographicMapCellHistory_Access_Array_Access := NullVehicleLayer'Class (This).getGeographicMapCellHistoryArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellHistoryArray;

begin
   null;
   NULL_VEHICLE_LAYER := NullVehicleLayer_Package.Create;

end org.allbinary.game.layer.NullVehicleLayer_Package;


