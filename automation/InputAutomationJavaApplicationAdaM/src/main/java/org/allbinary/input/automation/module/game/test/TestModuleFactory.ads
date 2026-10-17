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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package; use org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package; use org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;

package org.allbinary.input.automation.module.game.test.TestModuleFactory_Package is

   package AbstractInputAutomationFactory_Package renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
   package InputAutomationModuleData_Package renames org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   package BlankModuleConfigurationJPanel_Package renames org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;
   package RunnableInterface_Package renames org.allbinary.thread.RunnableInterface_Package;

   type TestModuleFactory is tagged;
   type TestModuleFactory_Access is access all TestModuleFactory'Class;
   type TestModuleFactory_Access_Array is array (Natural range <>) of TestModuleFactory_Access;
   type TestModuleFactory_Access_Array_Access is access all TestModuleFactory_Access_Array;

   type TestModuleFactory is new AbstractInputAutomationFactory with record
      blankModuleConfigurationJPanel : BlankModuleConfigurationJPanel_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out TestModuleFactory'Class);
   function Create return TestModuleFactory_Access;
   function getName (This : in out TestModuleFactory) return Unbounded_String;
   procedure getName (This : in out TestModuleFactory);
   function getConfigurationJPanel (This : in out TestModuleFactory) return JPanel_Access;
   procedure getConfigurationJPanel (This : in out TestModuleFactory);
   function getInstance (This : in out TestModuleFactory) return RunnableInterface_Access;
   procedure getInstance (This : in out TestModuleFactory);

end org.allbinary.input.automation.module.game.test.TestModuleFactory_Package;


