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


package body org.allbinary.media.AllBinaryNoVibration_Package is

   procedure Initialize_Fields (This : in out AllBinaryNoVibration'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryNoVibration'Class) is
   begin
      AllBinaryVibrationME_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryNoVibration_Access is
      This : constant AllBinaryNoVibration_Access := new AllBinaryNoVibration;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure vibrate (This : in out AllBinaryNoVibration; duration : Integer; type_Id : Integer; volume : Integer) is
   begin
        null;
   end vibrate;

begin
   null;
   NO_VIBRATION := AllBinaryNoVibration_Package.Create;

end org.allbinary.media.AllBinaryNoVibration_Package;


