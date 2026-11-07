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


with org.allbinary.input.AllBinarySensor_Package; use org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.input.AllBinarySensor_Package_References;
with org.allbinary.input.NoAllBinarySensor_Package; use org.allbinary.input.NoAllBinarySensor_Package;

package body org.allbinary.input.gyro.SensorGameUpdateProcessor_Package is

   package NoAllBinarySensor_Package renames Standard.org.allbinary.input.NoAllBinarySensor_Package;
   subtype AllBinarySensor_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access;
   function "=" (Left, Right : AllBinarySensor_Access) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   subtype AllBinarySensor_Access_Array is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array;
   function "=" (Left, Right : AllBinarySensor_Access_Array) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   subtype AllBinarySensor_Access_Array_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access;
   function "=" (Left, Right : AllBinarySensor_Access_Array_Access) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   subtype AllBinarySensor_Access_Array_Access_Array is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinarySensor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   subtype AllBinarySensor_Access_Array_Access_Array_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinarySensor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.AllBinarySensor_Package_References."=";
   procedure Initialize_Fields (This : in out SensorGameUpdateProcessor'Class) is
   begin
      null;
      This.inputSensor := NoAllBinarySensor_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out SensorGameUpdateProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SensorGameUpdateProcessor_Access is
      This : constant SensorGameUpdateProcessor_Access := new SensorGameUpdateProcessor;
   begin
      SensorGameUpdateProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setInputSensor (This : in out SensorGameUpdateProcessor; inputSensor_Param : access AllBinarySensor_Package.AllBinarySensor'Class) is
      inputSensor : constant AllBinarySensor_Access := AllBinarySensor_Access (inputSensor_Param);
   begin
        This.inputSensor := inputSensor;
   end setInputSensor;

   function getInputSensor (This : in out SensorGameUpdateProcessor) return AllBinarySensor_Access is
   begin
        return This.inputSensor;
   end getInputSensor;

   --  throws Exception
   procedure process (This : in out SensorGameUpdateProcessor; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end process;

   --  throws Exception
   procedure sendNotifications (This : in out SensorGameUpdateProcessor; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end sendNotifications;

   function isAnySensor (This : in out SensorGameUpdateProcessor) return Boolean is
   begin
        if (Java_Object_Access (This.inputSensor)) = (Java_Object_Access (NoAllBinarySensor_Package.getInstance)) then
            return False;
        else
            return True;
        end if;
   end isAnySensor;

   procedure setNoSensors (This : in out SensorGameUpdateProcessor) is
   begin
        SensorGameUpdateProcessor'Class (This).setInputSensor (NoAllBinarySensor_Package.getInstance);
   end setNoSensors;

   procedure process (This : in out SensorGameUpdateProcessor; Value : Unbounded_String) is
   begin
      SensorGameUpdateProcessor'Class (This).process (Java_Box (Value));
   end process;

   procedure sendNotifications (This : in out SensorGameUpdateProcessor; Value : Unbounded_String) is
   begin
      SensorGameUpdateProcessor'Class (This).sendNotifications (Java_Box (Value));
   end sendNotifications;

end org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;


