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


package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package is

   procedure Initialize_Fields (This : in out LogConfigTypeData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("LOG_CONFIG_TYPE_NAME");
      This.DESCRIPTION := To_Unbounded_String ("LOG_CONFIG_TYPE_DESCRIPTION");
   end Initialize_Fields;


   function getInstance return LogConfigTypeData_Access is
   begin
        return LogConfigTypeData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LogConfigTypeData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogConfigTypeData_Access is
      This : constant LogConfigTypeData_Access := new LogConfigTypeData;
   begin
      LogConfigTypeData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := LogConfigTypeData_Package.Create;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeData_Package;


