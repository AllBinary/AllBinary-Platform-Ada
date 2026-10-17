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


package body org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package is

   procedure Initialize_Fields (This : in out NoMagneticFieldSensor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoMagneticFieldSensor'Class) is
   begin
      AllBinaryMagneticFieldSensor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NoMagneticFieldSensor_Access is
      This : constant NoMagneticFieldSensor_Access := new NoMagneticFieldSensor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getOrientation (This : in out NoMagneticFieldSensor) return Orientation_Access is
   begin
        return Orientation_Package.NONE;
   end getOrientation;

   procedure onSensorChange (This : in out NoMagneticFieldSensor) is
   begin
        null;
   end onSensorChange;

   procedure getOrientation (This : in out NoMagneticFieldSensor) is
      Java_Result : constant Orientation_Access := NoMagneticFieldSensor'Class (This).getOrientation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrientation;

end org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package;


