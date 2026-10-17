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


package body org.allbinary.input.AllBinarySensorManager_Package is

   procedure Initialize_Fields (This : in out AllBinarySensorManager'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.ORIENTATION_SENSOR_INPUT := To_Unbounded_String ("Orientation Sensor Input");
      This.ORIENTATION_TYPE := To_Unbounded_String ("Orientation Type");
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return AllBinarySensorManager_Access is
   begin
        if (AllBinarySensorManager_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AllBinarySensorManager_Package.instance := AllBinarySensorManager_Package.Create;
        end if;
        return AllBinarySensorManager_Access (AllBinarySensorManager_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AllBinarySensorManager'Class) is
   begin
      Initialize_Fields (This);
        begin
            GyroSensorFactory_Package.init;
            AccelerometerSensorFactory_Package.init;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return AllBinarySensorManager_Access is
      This : constant AllBinarySensorManager_Access := new AllBinarySensorManager;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out AllBinarySensorManager) is
   begin
        null;
   end init;

   function getSensorNamesList (This : in out AllBinarySensorManager) return BasicArrayList_Access is
   begin
        return This.list;
   end getSensorNamesList;

   procedure shutdown (This : in out AllBinarySensorManager) is
   begin
        null;
   end shutdown;

   procedure getInstance is
      Java_Result : constant AllBinarySensorManager_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getSensorNamesList (This : in out AllBinarySensorManager) is
      Java_Result : constant BasicArrayList_Access := AllBinarySensorManager'Class (This).getSensorNamesList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSensorNamesList;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.AllBinarySensorManager_Package;


