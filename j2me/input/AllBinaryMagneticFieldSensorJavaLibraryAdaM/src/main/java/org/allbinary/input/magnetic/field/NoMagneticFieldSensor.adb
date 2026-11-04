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


with org.allbinary.input.AllBinarySensorListener_Package; use org.allbinary.input.AllBinarySensorListener_Package;
with org.allbinary.logic.math.Orientation_Package; use org.allbinary.logic.math.Orientation_Package;
with org.allbinary.logic.math.Orientation_Package_References;

package body org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package is

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
      NoMagneticFieldSensor_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getOrientation (This : in out NoMagneticFieldSensor) return Orientation_Access is
   begin
        return Orientation_Access (Orientation_Package.NONE);
   end getOrientation;

   procedure onSensorChange (This : in out NoMagneticFieldSensor) is
   begin
        null;
   end onSensorChange;

end org.allbinary.input.magnetic.field.NoMagneticFieldSensor_Package;


