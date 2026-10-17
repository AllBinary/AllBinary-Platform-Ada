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


package body org.allbinary.media.AllBinaryVibration_Package is

   procedure Initialize_Fields (This : in out AllBinaryVibration'Class) is
   begin
      null;
      This.vibrator := Vibrator_Access (ResourceUtil_Package.getInstance.getContext.getSystemService (Context_Package.VIBRATOR_SERVICE));
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
      Initialize (This.all);
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
        This.vibrator.vibrate (Long_Long_Integer (duration));
   end vibrate;

   procedure getInstance is
      Java_Result : constant AllBinaryVibrationME_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   VIBRATION := AllBinaryNoVibration_Package.NO_VIBRATION;

end org.allbinary.media.AllBinaryVibration_Package;


