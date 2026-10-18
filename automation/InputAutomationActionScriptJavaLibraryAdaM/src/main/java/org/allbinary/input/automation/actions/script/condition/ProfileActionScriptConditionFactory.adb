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


with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;

package body org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   procedure Initialize_Fields (This : in out ProfileActionScriptConditionFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ProfileActionScriptConditionFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ProfileActionScriptConditionFactory_Access is
      This : constant ProfileActionScriptConditionFactory_Access := new ProfileActionScriptConditionFactory;
   begin
      ProfileActionScriptConditionFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (node_Param : access Node_Package.Node'Class) return ProfileActionScriptConditionInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access;
   begin
        profileActionScriptConditionInterface := null;
        if (DomSearchHelper_Package.getNodeNoThrow (ColorAtActionScriptConditionData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptConditionInterface := ProfileActionScriptConditionInterface_Access (ColorAtActionScriptCondition_Package.Create (node));
        elsif (DomSearchHelper_Package.getNodeNoThrow (TimeIntervalActionScriptConditionData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptConditionInterface := ProfileActionScriptConditionInterface_Access (TimeIntervalActionScriptCondition_Package.Create (node));
        elsif (DomSearchHelper_Package.getNodeNoThrow (AlwaysActionScriptConditionData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptConditionInterface := ProfileActionScriptConditionInterface_Access (AlwaysActionScriptCondition_Package.Create (node));
        end if;
        return profileActionScriptConditionInterface;
   end getInstance;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant ProfileActionScriptConditionInterface_Access := getInstance (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package;


