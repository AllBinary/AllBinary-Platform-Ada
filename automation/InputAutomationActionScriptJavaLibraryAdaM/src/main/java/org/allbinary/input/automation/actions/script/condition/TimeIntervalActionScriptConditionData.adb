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


package body org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package is

   procedure Initialize_Fields (This : in out TimeIntervalActionScriptConditionData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TimeIntervalActionScriptConditionData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TimeIntervalActionScriptConditionData_Access is
      This : constant TimeIntervalActionScriptConditionData_Access := new TimeIntervalActionScriptConditionData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("TIME_INTERVAL_ACTION_CONDITION_NAME");
   TIME := To_Unbounded_String ("TIME_INTERVAL_ACTION_CONDITION_TIME");

end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package;


