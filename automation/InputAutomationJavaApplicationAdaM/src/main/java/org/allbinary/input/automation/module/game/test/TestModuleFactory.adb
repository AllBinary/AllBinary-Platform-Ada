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


with org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package; use org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package; use org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.input.automation.module.game.test.JPanel_Package; use org.allbinary.input.automation.module.game.test.JPanel_Package;
with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;

package body org.allbinary.input.automation.module.game.test.TestModuleFactory_Package is

   package InputAutomationModuleData_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   subtype BlankModuleConfigurationJPanel_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References."=";
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
   subtype JPanel_Access is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access;
   function "=" (Left, Right : JPanel_Access) return Boolean renames org.allbinary.input.automation.module.game.test.JPanel_Package_References."=";
   subtype JPanel_Access_Array is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array;
   function "=" (Left, Right : JPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.test.JPanel_Package_References."=";
   subtype JPanel_Access_Array_Access is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array_Access;
   function "=" (Left, Right : JPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.test.JPanel_Package_References."=";
   subtype JPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array_Access_Array;
   function "=" (Left, Right : JPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.test.JPanel_Package_References."=";
   subtype JPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.test.JPanel_Package_References."=";
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
      TestModuleFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getName (This : in out TestModuleFactory) return Unbounded_String is
   begin
        return TestModuleFactory_Package.NAME;
   end getName;

   function getConfigurationJPanel (This : in out TestModuleFactory) return JPanel_Access is
   begin
        return JPanel_Access (This.blankModuleConfigurationJPanel);
   end getConfigurationJPanel;

   --  throws Exception
   function getInstance (This : in out TestModuleFactory) return RunnableInterface_Access is
   begin
        return null;
   end getInstance;

begin
   null;
   NAME := To_Unbounded_String ("Test New Game") & Java_Image (InputAutomationModuleData_Package.MODULE_NAME_END);

end org.allbinary.input.automation.module.game.test.TestModuleFactory_Package;


