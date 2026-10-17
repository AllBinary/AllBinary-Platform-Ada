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


package body org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (node : Node_Access) return ProfileActionScriptConditionInterface_Access is
      profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access;
   begin
        profileActionScriptConditionInterface := null;
        if (DomSearchHelper_Package.getNodeNoThrow (ColorAtActionScriptConditionData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptConditionInterface := ColorAtActionScriptCondition_Package.Create (node);
        elsif (DomSearchHelper_Package.getNodeNoThrow (TimeIntervalActionScriptConditionData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptConditionInterface := TimeIntervalActionScriptCondition_Package.Create (node);
        elsif (DomSearchHelper_Package.getNodeNoThrow (AlwaysActionScriptConditionData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptConditionInterface := AlwaysActionScriptCondition_Package.Create (node);
        end if;
        return profileActionScriptConditionInterface;
   end getInstance;

   procedure getInstance (node : Node_Access) is
      Java_Result : constant ProfileActionScriptConditionInterface_Access := getInstance (node);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package;


