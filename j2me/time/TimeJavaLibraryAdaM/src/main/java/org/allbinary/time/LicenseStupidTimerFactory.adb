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


with org.allbinary.time.StupidTimer_Package; use org.allbinary.time.StupidTimer_Package;
with org.allbinary.time.StupidTimer_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.StupidTimer_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.logic.util.visitor.Visitor_Package;

package body org.allbinary.time.LicenseStupidTimerFactory_Package is

   subtype StupidTimer_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access;
   function "=" (Left, Right : StupidTimer_Access) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array;
   function "=" (Left, Right : StupidTimer_Access_Array) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access;
   function "=" (Left, Right : StupidTimer_Access_Array_Access) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array;
   function "=" (Left, Right : StupidTimer_Access_Array_Access_Array) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StupidTimer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   procedure Initialize_Fields (This : in out LicenseStupidTimerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseStupidTimerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseStupidTimerFactory_Access is
      This : constant LicenseStupidTimerFactory_Access := new LicenseStupidTimerFactory;
   begin
      LicenseStupidTimerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return StupidTimer_Access is
   begin
        return LicenseStupidTimerFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := StupidTimer_Package.Create;

end org.allbinary.time.LicenseStupidTimerFactory_Package;


