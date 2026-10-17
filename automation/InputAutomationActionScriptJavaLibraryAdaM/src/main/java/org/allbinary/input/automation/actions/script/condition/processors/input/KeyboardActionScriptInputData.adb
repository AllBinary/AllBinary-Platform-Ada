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


package body org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package is

   procedure Initialize_Fields (This : in out KeyboardActionScriptInputData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyboardActionScriptInputData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeyboardActionScriptInputData_Access is
      This : constant KeyboardActionScriptInputData_Access := new KeyboardActionScriptInputData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("KEY_ACTION_INPUT_NAME");
   KEY := To_Unbounded_String ("KEY_ACTION_INPUT_KEY");
   DELAY_BETWEEN_KEYS := To_Unbounded_String ("KEY_ACTION_INPUT_DELAY_BETWEEN_KEYS");
   PRESS := To_Unbounded_String ("KEY_ACTION_INPUT_PRESS");
   RELEASE := To_Unbounded_String ("KEY_ACTION_INPUT_RELEASE");

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;


