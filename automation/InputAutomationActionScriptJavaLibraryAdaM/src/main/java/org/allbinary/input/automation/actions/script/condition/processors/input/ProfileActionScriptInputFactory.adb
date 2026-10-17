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


package body org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory_Package is

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
   function getInstance (node_Param : access Node'Class) return ProfileActionScriptInputInterface_Access is
      node : Node_Access := Node_Access (node_Param);
      profileActionScriptInputInterface : ProfileActionScriptInputInterface_Access;
   begin
        profileActionScriptInputInterface := null;
        if (DomSearchHelper_Package.getNodeNoThrow (KeyboardActionScriptInputData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptInputInterface := KeyboardActionScriptInput_Package.Create (node);
        elsif (DomSearchHelper_Package.getNodeNoThrow (MouseActionScriptInputData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptInputInterface := MouseActionScriptInput_Package.Create (node);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such ActionScript Input")));
        end if;
        return profileActionScriptInputInterface;
   end getInstance;

   procedure getInstance (node_Param : access Node'Class) is
      Java_Result : constant ProfileActionScriptInputInterface_Access := getInstance (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory_Package;


