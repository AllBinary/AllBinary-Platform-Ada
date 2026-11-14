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


with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.system.security.licensing.ClientInformation_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.system.security.licensing.TestClientInformation_Package is

   procedure Initialize_Fields (This : in out TestClientInformation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TestClientInformation'Class) is
   begin
        AbeClientInformation_Package.Initialize (This, To_Unbounded_String ("Test App Name"), To_Unbounded_String ("0.0.1"), To_Unbounded_String ("Test App Name 0.0.1"), To_Unbounded_String ("TA"));
   end Initialize;

   function Create return TestClientInformation_Access is
      This : constant TestClientInformation_Access := new TestClientInformation;
   begin
      TestClientInformation_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.logic.system.security.licensing.TestClientInformation_Package;


