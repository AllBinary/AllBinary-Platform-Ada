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


with org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;

package body org.allbinary.input.gyro.AllBinaryOrientationSensor_Package is

   package NoCompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
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


