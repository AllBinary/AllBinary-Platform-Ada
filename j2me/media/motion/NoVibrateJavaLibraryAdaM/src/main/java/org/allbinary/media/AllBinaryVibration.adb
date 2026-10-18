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


with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.media.AllBinaryNoVibration_Package; use org.allbinary.media.AllBinaryNoVibration_Package;

package body org.allbinary.media.AllBinaryVibration_Package is

   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   procedure Initialize_Fields (This : in out AllBinaryVibration'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryVibration'Class) is
   begin
      AllBinaryVibrationME_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryVibration_Access is
      This : constant AllBinaryVibration_Access := new AllBinaryVibration;
   begin
      AllBinaryVibration_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AllBinaryVibrationME_Access is
   begin
        return AllBinaryVibration_Package.VIBRATION;
   end getInstance;

   procedure init is
   begin
        if (GameConfigurationCentral_Package.getInstance.VIBRATION.getValue.intValue) = (0) then
            AllBinaryVibration_Package.VIBRATION := AllBinaryNoVibration_Package.NO_VIBRATION;
        else
            AllBinaryVibration_Package.VIBRATION := AllBinaryVibration_Package.Create;
        end if;
   end init;

   procedure vibrate (This : in out AllBinaryVibration; duration : Integer; type_Id : Integer; volume : Integer) is
   begin
        null;
   end vibrate;

begin
   null;
   VIBRATION := AllBinaryNoVibration_Package.NO_VIBRATION;

end org.allbinary.media.AllBinaryVibration_Package;


