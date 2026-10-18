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
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   procedure Initialize_Fields (This : in out ProfileActionScriptInputFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ProfileActionScriptInputFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ProfileActionScriptInputFactory_Access is
      This : constant ProfileActionScriptInputFactory_Access := new ProfileActionScriptInputFactory;
   begin
      ProfileActionScriptInputFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (node_Param : access Node_Package.Node'Class) return ProfileActionScriptInputInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      profileActionScriptInputInterface : ProfileActionScriptInputInterface_Access;
   begin
        profileActionScriptInputInterface := null;
        if (DomSearchHelper_Package.getNodeNoThrow (KeyboardActionScriptInputData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptInputInterface := ProfileActionScriptInputInterface_Access (KeyboardActionScriptInput_Package.Create (node));
        elsif (DomSearchHelper_Package.getNodeNoThrow (MouseActionScriptInputData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptInputInterface := ProfileActionScriptInputInterface_Access (MouseActionScriptInput_Package.Create (node));
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such ActionScript Input")));
        end if;
        return profileActionScriptInputInterface;
   end getInstance;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant ProfileActionScriptInputInterface_Access := getInstance (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory_Package;


