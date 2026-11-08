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
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package is

   procedure Initialize_Fields (This : in out AllBinaryMagneticFieldSensor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryMagneticFieldSensor'Class) is
   begin
      AllBinarySensor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryMagneticFieldSensor_Access is
      This : constant AllBinaryMagneticFieldSensor_Access := new AllBinaryMagneticFieldSensor;
   begin
      AllBinaryMagneticFieldSensor_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package;


