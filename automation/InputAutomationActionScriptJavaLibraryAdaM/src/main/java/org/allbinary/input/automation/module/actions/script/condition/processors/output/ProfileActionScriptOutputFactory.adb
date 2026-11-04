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
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
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
   subtype ProfileActionScriptOutputInterface_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
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
   function getInstance (node_Param : access Node_Package.Node'Class) return ProfileActionScriptOutputInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
      profileActionScriptOutputInterface : ProfileActionScriptOutputInterface_Access;
   begin
        profileActionScriptOutputInterface := null;
        if (DomSearchHelper_Package.getNodeNoThrow (ImageActionScriptOutputData_Package.NAME, node.getChildNodes)) /= (null) then
            profileActionScriptOutputInterface := ProfileActionScriptOutputInterface_Access (ImageActionScriptOutput_Package.Create (node));
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such ActionScript Output")));
        end if;
        return profileActionScriptOutputInterface;
   end getInstance;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant ProfileActionScriptOutputInterface_Access := getInstance (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package;


