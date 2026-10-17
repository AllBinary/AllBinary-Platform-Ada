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


package body org.allbinary.input.automation.actions.script.condition.GenericProfileActionScriptConditionData_Package is

   procedure Initialize_Fields (This : in out GenericProfileActionScriptConditionData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileActionScriptConditionData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericProfileActionScriptConditionData_Access is
      This : constant GenericProfileActionScriptConditionData_Access := new GenericProfileActionScriptConditionData;
   begin
      GenericProfileActionScriptConditionData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("GENERIC_CONFIGURATION_PROFILE_ACTION_IF_NAME");

end org.allbinary.input.automation.actions.script.condition.GenericProfileActionScriptConditionData_Package;


