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


package body org.allbinary.input.gyro.AllBinaryOrientationSensor_Package is

   procedure Initialize_Fields (This : in out AllBinaryOrientationSensor'Class) is
   begin
      null;
      This.listener := NoCompleteMotionGestureInputEventListener_Package.getInstance;
   end Initialize_Fields;


   procedure setListener (This : in out AllBinaryOrientationSensor; completeMotionGestureInputEventListenerInterface : CompleteMotionGestureInputEventListenerInterface_Access) is
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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getOrientation (This : in out AllBinaryOrientationSensor) return Orientation_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end getOrientation;

   procedure getOrientation (This : in out AllBinaryOrientationSensor) is
      Java_Result : constant Orientation_Access := AllBinaryOrientationSensor'Class (This).getOrientation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrientation;

begin
   null;
   NULL_ALLBINARY_ORIENTATION_SENSOR := AllBinaryOrientationSensor_Package.Create;

end org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;


