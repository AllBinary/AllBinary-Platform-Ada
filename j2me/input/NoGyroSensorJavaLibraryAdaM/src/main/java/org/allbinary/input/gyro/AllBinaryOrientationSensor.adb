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


with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References;
with org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
with org.allbinary.input.AllBinarySensor_Package; use org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;
with org.allbinary.logic.math.Orientation_Package_References;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;

package body org.allbinary.input.gyro.AllBinaryOrientationSensor_Package is

   package NoCompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
   subtype CompleteMotionGestureInputEventListenerInterface_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References."=";
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References."=";
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References."=";
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References."=";
   subtype CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References.CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package_References."=";
   subtype Orientation_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access;
   function "=" (Left, Right : Orientation_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array;
   function "=" (Left, Right : Orientation_Access_Array) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access;
   function "=" (Left, Right : Orientation_Access_Array_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array;
   function "=" (Left, Right : Orientation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Orientation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryOrientationSensor'Class) is
   begin
      null;
      This.listener := CompleteMotionGestureInputEventListenerInterface_Access (NoCompleteMotionGestureInputEventListener_Package.getInstance);
   end Initialize_Fields;


   procedure setListener (This : in out AllBinaryOrientationSensor; completeMotionGestureInputEventListenerInterface_Param : access CompleteMotionGestureInputEventListenerInterface_Package.CompleteMotionGestureInputEventListenerInterface'Class) is
      completeMotionGestureInputEventListenerInterface : constant CompleteMotionGestureInputEventListenerInterface_Access := CompleteMotionGestureInputEventListenerInterface_Access (completeMotionGestureInputEventListenerInterface_Param);
   begin
        This.listener := completeMotionGestureInputEventListenerInterface;
   end setListener;

   procedure Initialize (This : in out AllBinaryOrientationSensor'Class) is
   begin
      AllBinarySensor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryOrientationSensor_Access is
      This : constant AllBinaryOrientationSensor_Access := new AllBinaryOrientationSensor;
   begin
      AllBinaryOrientationSensor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getOrientation (This : in out AllBinaryOrientationSensor) return Orientation_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end getOrientation;

begin
   null;
   NULL_ALLBINARY_ORIENTATION_SENSOR := AllBinaryOrientationSensor_Package.Create;

end org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;


