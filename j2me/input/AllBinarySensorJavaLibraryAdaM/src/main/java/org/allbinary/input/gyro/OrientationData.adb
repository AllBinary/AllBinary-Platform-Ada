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


package body org.allbinary.input.gyro.OrientationData_Package is

   procedure Initialize_Fields (This : in out OrientationData'Class) is
   begin
      null;
      This.ORIENTATION_SENSOR_INPUT := To_Unbounded_String ("Orientation Sensor Input");
      This.ORIENTATION_TYPE := To_Unbounded_String ("Orientation Type");
   end Initialize_Fields;


   procedure Initialize (This : in out OrientationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OrientationData_Access is
      This : constant OrientationData_Access := new OrientationData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return OrientationData_Access is
   begin
        return OrientationData_Package.SINGLETON;
   end getInstance;

   procedure getInstance is
      Java_Result : constant OrientationData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := OrientationData_Package.Create;

end org.allbinary.input.gyro.OrientationData_Package;


