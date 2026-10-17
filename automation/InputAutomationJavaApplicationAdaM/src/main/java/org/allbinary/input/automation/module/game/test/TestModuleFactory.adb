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


package body org.allbinary.input.automation.module.game.test.TestModuleFactory_Package is

   procedure Initialize_Fields (This : in out TestModuleFactory'Class) is
   begin
      null;
      This.blankModuleConfigurationJPanel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TestModuleFactory'Class) is
   begin
        AbstractInputAutomationFactory_Package.Initialize (This, NAME, BlankModuleConfigurationJPanel_Package.Create);
        Initialize_Fields (This);
   end Initialize;

   function Create return TestModuleFactory_Access is
      This : constant TestModuleFactory_Access := new TestModuleFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getName (This : in out TestModuleFactory) return Unbounded_String is
   begin
        return TestModuleFactory_Package.NAME;
   end getName;

   function getConfigurationJPanel (This : in out TestModuleFactory) return JPanel_Access is
   begin
        return This.blankModuleConfigurationJPanel;
   end getConfigurationJPanel;

   --  throws Exception
   function getInstance (This : in out TestModuleFactory) return RunnableInterface_Access is
   begin
        return null;
   end getInstance;

   procedure getName (This : in out TestModuleFactory) is
      Java_Result : constant Unbounded_String := TestModuleFactory'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getConfigurationJPanel (This : in out TestModuleFactory) is
      Java_Result : constant JPanel_Access := TestModuleFactory'Class (This).getConfigurationJPanel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getConfigurationJPanel;

   procedure getInstance (This : in out TestModuleFactory) is
      Java_Result : constant RunnableInterface_Access := TestModuleFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NAME := To_Unbounded_String ("Test New Game") & Java_Image (InputAutomationModuleData_Package.MODULE_NAME_END);

end org.allbinary.input.automation.module.game.test.TestModuleFactory_Package;


