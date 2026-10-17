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


package body org.allbinary.logic.communication.log.config.LogConfigsData_Package is

   procedure Initialize_Fields (This : in out LogConfigsData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("LOG_CONFIGS_NAME");
   end Initialize_Fields;

   procedure Initialize (This : in out LogConfigsData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LogConfigsData_Access is
      This : constant LogConfigsData_Access := new LogConfigsData;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LogConfigsData_Access is
   begin
        return LogConfigsData_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant LogConfigsData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := LogConfigsData_Package.Create;

end org.allbinary.logic.communication.log.config.LogConfigsData_Package;


