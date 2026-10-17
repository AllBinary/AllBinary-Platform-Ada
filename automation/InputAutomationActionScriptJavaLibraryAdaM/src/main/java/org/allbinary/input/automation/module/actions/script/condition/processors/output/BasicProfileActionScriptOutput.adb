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


package body org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package is

   procedure Initialize_Fields (This : in out BasicProfileActionScriptOutput'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptOutput'Class; label : Unbounded_String; node : Node_Access) is
   begin
        BasicProfileActionScriptProcessor_Package.Initialize (This, label, node);
   end Initialize;

   function Create (label : Unbounded_String; node : Node_Access) return BasicProfileActionScriptOutput_Access is
      This : constant BasicProfileActionScriptOutput_Access := new BasicProfileActionScriptOutput;
   begin
      BasicProfileActionScriptOutput_Package.Initialize (This.all, label, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
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
   function toXmlNode (This : in out BasicProfileActionScriptOutput; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := document.createElement (GenericProfileActionScriptOutputData_Package.NAME);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out BasicProfileActionScriptOutput; document : Document_Access) is
      Java_Result : constant Node_Access := BasicProfileActionScriptOutput'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;


