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
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.GenericProfileActionScriptProcessorData_Package; use org.allbinary.input.automation.actions.script.condition.processors.GenericProfileActionScriptProcessorData_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.GenericProfileActionScriptProcessorData_Package;
with org.allbinary.input.automation.actions.script.JTreeInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package is

   package JTreeInterfaceFactory_Package renames Standard.org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
   package ProfileActionScriptConditionInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
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
        ProfileActionScriptItem_Package.ProfileActionScriptItem (This).actionPerformed (actionEvent);
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


