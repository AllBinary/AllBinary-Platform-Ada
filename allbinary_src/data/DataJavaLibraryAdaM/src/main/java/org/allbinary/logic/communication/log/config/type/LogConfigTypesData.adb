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


package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypesData_Package is

   procedure Initialize_Fields (This : in out LogConfigTypesData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("LOG_CONFIG_TYPES_NAME");
      This.DESCRIPTION := To_Unbounded_String ("LOG_CONFIG_TYPES_DESCRIPTION");
   end Initialize_Fields;

   procedure Initialize (This : in out LogConfigTypesData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LogConfigTypesData_Access is
      This : constant LogConfigTypesData_Access := new LogConfigTypesData;
   begin
      LogConfigTypesData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LogConfigTypesData_Access is
   begin
        return LogConfigTypesData_Package.instance;
   end getInstance;

begin
   null;
   instance := LogConfigTypesData_Package.Create;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypesData_Package;


