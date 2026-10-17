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


package body org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package is

   procedure Initialize_Fields (This : in out GenericProfileActionScriptInputData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileActionScriptInputData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericProfileActionScriptInputData_Access is
      This : constant GenericProfileActionScriptInputData_Access := new GenericProfileActionScriptInputData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_NAME");
   TYPE_Id := To_Unbounded_String ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_TYPE");
   DELAY_Id := To_Unbounded_String ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_DELAY");

end org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package;


