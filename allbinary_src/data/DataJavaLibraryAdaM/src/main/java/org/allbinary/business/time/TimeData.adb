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



package body org.allbinary.business.time.TimeData_Package is

   procedure Initialize_Fields (This : in out TimeData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("TIME_NAME");
      This.START := To_Unbounded_String ("TIME_START");
      This.END_Id := To_Unbounded_String ("TIME_END");
   end Initialize_Fields;


   function getInstance return TimeData_Access is
   begin
        return TimeData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TimeData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TimeData_Access is
      This : constant TimeData_Access := new TimeData;
   begin
      TimeData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := TimeData_Package.Create;

end org.allbinary.business.time.TimeData_Package;


