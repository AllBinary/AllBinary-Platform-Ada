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



package body org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package is

   procedure Initialize_Fields (This : in out MouseActionScriptInputData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MouseActionScriptInputData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MouseActionScriptInputData_Access is
      This : constant MouseActionScriptInputData_Access := new MouseActionScriptInputData;
   begin
      MouseActionScriptInputData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("MOUSE_ACTION_INPUT_NAME");
   BUTTONS := To_Unbounded_String ("MOUSE_ACTION_INPUT_BUTTONS");
   MOVE := To_Unbounded_String ("MOUSE_ACTION_INPUT_MOVE");
   MOVE_X := To_Unbounded_String ("MOUSE_ACTION_INPUT_MOVE_X");
   MOVE_Y := To_Unbounded_String ("MOUSE_ACTION_INPUT_MOVE_Y");

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package;


