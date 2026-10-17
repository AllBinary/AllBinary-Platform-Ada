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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;

package org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ProfileActionScriptConditionFactory is tagged;
   type ProfileActionScriptConditionFactory_Access is access all ProfileActionScriptConditionFactory'Class;
   type ProfileActionScriptConditionFactory_Access_Array is array (Natural range <>) of ProfileActionScriptConditionFactory_Access;
   type ProfileActionScriptConditionFactory_Access_Array_Access is access all ProfileActionScriptConditionFactory_Access_Array;

   type ProfileActionScriptConditionFactory is new Java_Object with null record;

   procedure Initialize (This : in out ProfileActionScriptConditionFactory'Class);
   function Create return ProfileActionScriptConditionFactory_Access;
   function getInstance (node_Param : access Node'Class) return ProfileActionScriptConditionInterface_Access;
   procedure getInstance (node_Param : access Node'Class);

end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package;


