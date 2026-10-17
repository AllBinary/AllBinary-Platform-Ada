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
        null;
   end Initialize;

   function Create return AllBinarySensorManager_Access is
      This : constant AllBinarySensorManager_Access := new AllBinarySensorManager;
   begin
      AllBinarySensorManager_Package.Initialize (This.all);
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

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.AllBinarySensorManager_Package;


