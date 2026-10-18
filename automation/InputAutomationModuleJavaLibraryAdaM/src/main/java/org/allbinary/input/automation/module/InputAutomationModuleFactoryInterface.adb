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



package body org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package is

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


