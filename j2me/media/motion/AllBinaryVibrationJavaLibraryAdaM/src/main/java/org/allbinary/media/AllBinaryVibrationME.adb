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


package body org.allbinary.media.AllBinaryVibrationME_Package is

   procedure Initialize_Fields (This : in out AllBinaryVibrationME'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryVibrationME'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryVibrationME_Access is
      This : constant AllBinaryVibrationME_Access := new AllBinaryVibrationME;
   begin
      AllBinaryVibrationME_Package.Initialize (This.all);
      return This;
   end Create;


   procedure vibrate (This : in out AllBinaryVibrationME; duration : Integer; type_Id : Integer; volume : Integer) is
   begin
        null;
   end vibrate;

end org.allbinary.media.AllBinaryVibrationME_Package;


