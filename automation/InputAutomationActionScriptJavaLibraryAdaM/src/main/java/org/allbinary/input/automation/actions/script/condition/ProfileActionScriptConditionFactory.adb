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
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package;

package body org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
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
      Java_Result : constant ProfileActionScriptConditionInterface_Access := getInstance (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package;


