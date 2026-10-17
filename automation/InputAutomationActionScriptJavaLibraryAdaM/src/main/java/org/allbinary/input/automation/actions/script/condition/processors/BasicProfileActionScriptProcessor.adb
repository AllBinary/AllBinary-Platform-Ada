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


package body org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package is

   procedure Initialize_Fields (This : in out BasicProfileActionScriptProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptProcessor'Class; label : Unbounded_String; node : Node_Access) is
   begin
        ProfileActionScriptItem_Package.Initialize (This, label, node);
   end Initialize;

   function Create (label : Unbounded_String; node : Node_Access) return BasicProfileActionScriptProcessor_Access is
      This : constant BasicProfileActionScriptProcessor_Access := new BasicProfileActionScriptProcessor;
   begin
      BasicProfileActionScriptProcessor_Package.Initialize (This.all, label, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
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

   procedure actionPerformed (This : in out BasicProfileActionScriptProcessor; actionEvent : ActionEvent_Access) is
      profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access;
   begin
        ProfileActionScriptItem (This).actionPerformed (actionEvent);
        if (actionEvent.getActionCommand.compareTo (DELETE)) = (0) then
            if (This.getParent.all in ProfileActionScriptConditionInterface_Package.ProfileActionScriptConditionInterface'Class) then
                profileActionScriptConditionInterface := ProfileActionScriptConditionInterface_Access (This.getParent);
                profileActionScriptConditionInterface.removeProcessor (ProfileActionScriptProcessorInterface_Access (This'Unchecked_Access));
                JTreeInterfaceFactory_Package.getInstance.getJTreeInterface.updateJTree;
            end if;
        end if;
   end actionPerformed;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptProcessor; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := document.createElement (GenericProfileActionScriptProcessorData_Package.NAME);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out BasicProfileActionScriptProcessor; document : Document_Access) is
      Java_Result : constant Node_Access := BasicProfileActionScriptProcessor'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;


