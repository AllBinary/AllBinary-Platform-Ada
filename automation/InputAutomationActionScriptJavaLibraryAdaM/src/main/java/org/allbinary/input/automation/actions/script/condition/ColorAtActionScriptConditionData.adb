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


package body org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package is

   procedure Initialize_Fields (This : in out ColorAtActionScriptConditionData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorAtActionScriptConditionData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorAtActionScriptConditionData_Access is
      This : constant ColorAtActionScriptConditionData_Access := new ColorAtActionScriptConditionData;
   begin
      ColorAtActionScriptConditionData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_NAME");
   LOCATION_X := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_LOCATION_X");
   LOCATION_Y := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_LOCATION_Y");
   MIN_RED := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_MIN_RED");
   MAX_RED := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_MAX_RED");
   MIN_GREEN := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_MIN_GREEN");
   MAX_GREEN := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_MAX_GREEN");
   MIN_BLUE := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_MIN_BLUE");
   MAX_BLUE := To_Unbounded_String ("COLOR_AT_ACTION_CONDITION_MAX_BLUE");

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;


