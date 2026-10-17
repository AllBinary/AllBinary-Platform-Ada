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


package body org.allbinary.logic.communication.log.config.LogConfigData_Package is

   procedure Initialize_Fields (This : in out LogConfigData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("LOG_CONFIG_NAME");
      This.DESCRIPTION := To_Unbounded_String ("LOG_CONFIG_DESCRIPTION");
      This.FILE := To_Unbounded_String ("LOG_CONFIG_FILE");
   end Initialize_Fields;


   function getInstance return LogConfigData_Access is
   begin
        return LogConfigData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LogConfigData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogConfigData_Access is
      This : constant LogConfigData_Access := new LogConfigData;
   begin
      LogConfigData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := LogConfigData_Package.Create;

end org.allbinary.logic.communication.log.config.LogConfigData_Package;


