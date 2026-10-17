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


package body org.allbinary.input.NoAllBinarySensor_Package is

   procedure Initialize_Fields (This : in out NoAllBinarySensor'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NoAllBinarySensor_Access is
   begin
        return NoAllBinarySensor_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NoAllBinarySensor'Class) is
   begin
      AllBinarySensor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoAllBinarySensor_Access is
      This : constant NoAllBinarySensor_Access := new NoAllBinarySensor;
   begin
      NoAllBinarySensor_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NoAllBinarySensor_Package.Create;

end org.allbinary.input.NoAllBinarySensor_Package;


