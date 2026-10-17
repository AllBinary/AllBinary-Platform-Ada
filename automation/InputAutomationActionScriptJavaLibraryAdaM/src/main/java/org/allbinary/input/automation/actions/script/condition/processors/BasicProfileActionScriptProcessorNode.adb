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


package body org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package is

   procedure Initialize_Fields (This : in out BasicProfileActionScriptProcessorNode'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptProcessorNode'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
   begin
      Initialize_Fields (This);
        actionNode := DomSearchHelper_Package.getNode (GenericProfileActionScriptProcessorData_Package.NAME, node.getChildNodes);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptProcessorNode_Access is
      This : constant BasicProfileActionScriptProcessorNode_Access := new BasicProfileActionScriptProcessorNode;
   begin
      BasicProfileActionScriptProcessorNode_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out BasicProfileActionScriptProcessorNode'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicProfileActionScriptProcessorNode_Access is
      This : constant BasicProfileActionScriptProcessorNode_Access := new BasicProfileActionScriptProcessorNode;
   begin
      BasicProfileActionScriptProcessorNode_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptProcessorNode; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := document.createElement (GenericProfileActionScriptProcessorData_Package.NAME);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out BasicProfileActionScriptProcessorNode; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicProfileActionScriptProcessorNode'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package;


