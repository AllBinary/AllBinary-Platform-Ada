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


with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.input.automation.module.JPanel_Package; use org.allbinary.input.automation.module.JPanel_Package;

package body org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package is

   subtype RunnableInterface_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access;
   function "=" (Left, Right : RunnableInterface_Access) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array;
   function "=" (Left, Right : RunnableInterface_Access_Array) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access;
   function "=" (Left, Right : RunnableInterface_Access_Array_Access) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RunnableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype RunnableInterface_Access_Array_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RunnableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.RunnableInterface_Package_References."=";
   subtype JPanel_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access;
   function "=" (Left, Right : JPanel_Access) return Boolean renames org.allbinary.input.automation.module.JPanel_Package_References."=";
   subtype JPanel_Access_Array is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array;
   function "=" (Left, Right : JPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.JPanel_Package_References."=";
   subtype JPanel_Access_Array_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access;
   function "=" (Left, Right : JPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.JPanel_Package_References."=";
   subtype JPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access_Array;
   function "=" (Left, Right : JPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.JPanel_Package_References."=";
   subtype JPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.JPanel_Package_References."=";
   procedure Initialize_Fields (This : in out InputAutomationModuleFactoryInterface'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InputAutomationModuleFactoryInterface'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputAutomationModuleFactoryInterface_Access is
      This : constant InputAutomationModuleFactoryInterface_Access := new InputAutomationModuleFactoryInterface;
   begin
      InputAutomationModuleFactoryInterface_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out InputAutomationModuleFactoryInterface) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getName;

   function getConfigurationJPanel (This : in out InputAutomationModuleFactoryInterface) return JPanel_Access is
   begin
        return null;
   end getConfigurationJPanel;

   function getHelpSet (This : in out InputAutomationModuleFactoryInterface) return HelpSet_Access is
   begin
        return null;
   end getHelpSet;

   --  throws Exception
   function getInstance (This : in out InputAutomationModuleFactoryInterface) return RunnableInterface_Access is
   begin
        return null;
   end getInstance;

end org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;


