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


package body org.allbinary.time.TimeStampUtil_Package is

   procedure Initialize_Fields (This : in out TimeStampUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return TimeStampUtil_Access is
   begin
        return TimeStampUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TimeStampUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TimeStampUtil_Access is
      This : constant TimeStampUtil_Access := new TimeStampUtil;
   begin
      TimeStampUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getAsString (This : in out TimeStampUtil) return Unbounded_String is
      simpleDataFormat : DateTimeFormat_Access;
      date : Date_Access;
   begin
        simpleDataFormat := DateTimeFormat_Package.getFormat (To_Unbounded_String ("yyyy-MM-dd HH:mm:ss.SSS"));
        date := Date_Package.Create;
        return simpleDataFormat.format (date);
   end getAsString;

begin
   null;
   instance := TimeStampUtil_Package.Create;

end org.allbinary.time.TimeStampUtil_Package;


