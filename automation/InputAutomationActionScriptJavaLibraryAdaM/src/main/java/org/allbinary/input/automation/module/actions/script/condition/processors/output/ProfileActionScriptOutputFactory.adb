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


package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package is

   procedure Initialize_Fields (This : in out ProfileActionScriptOutputFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ProfileActionScriptOutputFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ProfileActionScriptOutputFactory_Access is
      This : constant ProfileActionScriptOutputFactory_Access := new ProfileActionScriptOutputFactory;
   begin
      ProfileActionScriptOutputFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (node_Param : access Node'Class) return ProfileActionScriptOutputInterface_Access is
      node : Node_Access := Node_Access (node_Param);
      profileActionScriptOutputInterface : ProfileActionScriptOutputInterface_Access;
   begin
        profileActionScriptOutputInterface := null;
        if (DomSearchHelper_Package.getNodeNoThrow (ImageActionScriptOutputData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptOutputInterface := ImageActionScriptOutput_Package.Create (node);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such ActionScript Output")));
        end if;
        return profileActionScriptOutputInterface;
   end getInstance;

   procedure getInstance (node_Param : access Node'Class) is
      Java_Result : constant ProfileActionScriptOutputInterface_Access := getInstance (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package;


