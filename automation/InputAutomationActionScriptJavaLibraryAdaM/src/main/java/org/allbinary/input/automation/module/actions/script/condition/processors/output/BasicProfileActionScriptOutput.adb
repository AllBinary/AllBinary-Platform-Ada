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


with org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;

package body org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package is

   procedure Initialize_Fields (This : in out BasicProfileActionScriptOutput'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptOutput'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        BasicProfileActionScriptProcessor_Package.Initialize (This, label, node);
   end Initialize;

   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptOutput_Access is
      This : constant BasicProfileActionScriptOutput_Access := new BasicProfileActionScriptOutput;
   begin
      BasicProfileActionScriptOutput_Package.Initialize (This.all, label, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out BasicProfileActionScriptOutput'Class; label : Unbounded_String) is
   begin
        BasicProfileActionScriptProcessor_Package.Initialize (This, label);
   end Initialize;

   function Create (label : Unbounded_String) return BasicProfileActionScriptOutput_Access is
      This : constant BasicProfileActionScriptOutput_Access := new BasicProfileActionScriptOutput;
   begin
      BasicProfileActionScriptOutput_Package.Initialize (This.all, label);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptOutput; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := document.createElement (GenericProfileActionScriptOutputData_Package.NAME);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out BasicProfileActionScriptOutput; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicProfileActionScriptOutput'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;


