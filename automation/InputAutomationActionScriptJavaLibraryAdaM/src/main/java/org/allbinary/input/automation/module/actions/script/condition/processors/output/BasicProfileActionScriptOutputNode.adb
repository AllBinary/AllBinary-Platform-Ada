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
with org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;

package body org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutputNode_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   procedure Initialize_Fields (This : in out BasicProfileActionScriptOutputNode'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptOutputNode'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
   begin
      Initialize_Fields (This);
        actionNode := DomSearchHelper_Package.getNode (GenericProfileActionScriptOutputData_Package.NAME, node.getChildNodes);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptOutputNode_Access is
      This : constant BasicProfileActionScriptOutputNode_Access := new BasicProfileActionScriptOutputNode;
   begin
      BasicProfileActionScriptOutputNode_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out BasicProfileActionScriptOutputNode'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicProfileActionScriptOutputNode_Access is
      This : constant BasicProfileActionScriptOutputNode_Access := new BasicProfileActionScriptOutputNode;
   begin
      BasicProfileActionScriptOutputNode_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptOutputNode; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := document.createElement (GenericProfileActionScriptOutputData_Package.NAME);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out BasicProfileActionScriptOutputNode; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicProfileActionScriptOutputNode'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutputNode_Package;


