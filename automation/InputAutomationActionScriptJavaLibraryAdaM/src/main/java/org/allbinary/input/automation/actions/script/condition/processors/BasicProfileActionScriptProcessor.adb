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


with org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package; use org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.GenericProfileActionScriptProcessorData_Package; use org.allbinary.input.automation.actions.script.condition.processors.GenericProfileActionScriptProcessorData_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package is

   package JTreeInterfaceFactory_Package renames Standard.org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
   package ProfileActionScriptConditionInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   procedure Initialize_Fields (This : in out BasicProfileActionScriptProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptProcessor'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        ProfileActionScriptItem_Package.Initialize (This, label, node);
   end Initialize;

   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptProcessor_Access is
      This : constant BasicProfileActionScriptProcessor_Access := new BasicProfileActionScriptProcessor;
   begin
      BasicProfileActionScriptProcessor_Package.Initialize (This.all, label, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out BasicProfileActionScriptProcessor'Class; label : Unbounded_String) is
   begin
        ProfileActionScriptItem_Package.Initialize (This, label);
   end Initialize;

   function Create (label : Unbounded_String) return BasicProfileActionScriptProcessor_Access is
      This : constant BasicProfileActionScriptProcessor_Access := new BasicProfileActionScriptProcessor;
   begin
      BasicProfileActionScriptProcessor_Package.Initialize (This.all, label);
      return This;
   end Create;

   procedure actionPerformed (This : in out BasicProfileActionScriptProcessor; actionEvent_Param : access ActionEvent_Package.ActionEvent'Class) is
      actionEvent : constant ActionEvent_Access := ActionEvent_Access (actionEvent_Param);
      profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access;
   begin
        ProfileActionScriptItem (This).actionPerformed (actionEvent);
        if (actionEvent.getActionCommand.compareTo (DELETE)) = (0) then
            if (BasicProfileActionScriptProcessor'Class (This).getParent.all in ProfileActionScriptConditionInterface_Package.ProfileActionScriptConditionInterface'Class) then
                profileActionScriptConditionInterface := ProfileActionScriptConditionInterface_Access (BasicProfileActionScriptProcessor'Class (This).getParent);
                profileActionScriptConditionInterface.removeProcessor (ProfileActionScriptProcessorInterface_Access (BasicProfileActionScriptProcessor_Access'(This'Unchecked_Access)));
                JTreeInterfaceFactory_Package.getInstance.getJTreeInterface.updateJTree;
            end if;
        end if;
   end actionPerformed;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptProcessor; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := document.createElement (GenericProfileActionScriptProcessorData_Package.NAME);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out BasicProfileActionScriptProcessor; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicProfileActionScriptProcessor'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;


