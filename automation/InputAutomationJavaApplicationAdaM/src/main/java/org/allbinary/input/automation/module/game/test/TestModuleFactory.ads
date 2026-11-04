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

limited with org.allbinary.input.automation.module.game.test.TestModuleFactory_Package;
package org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References is
   type TestModuleFactory_Access is access all org.allbinary.input.automation.module.game.test.TestModuleFactory_Package.TestModuleFactory'Class;
   type TestModuleFactory_Access_Array is array (Natural range <>) of TestModuleFactory_Access;
   type TestModuleFactory_Access_Array_Access is access all TestModuleFactory_Access_Array;
   type TestModuleFactory_Access_Array_Access_Array is array (Natural range <>) of TestModuleFactory_Access_Array_Access;
   type TestModuleFactory_Access_Array_Access_Array_Access is access all TestModuleFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References;

with org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package; use org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
limited with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;
with org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References;
limited with org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.thread.RunnableInterface_Package_References;
limited with org.allbinary.input.automation.module.game.test.JPanel_Package;
with org.allbinary.input.automation.module.game.test.JPanel_Package_References;

package org.allbinary.input.automation.module.game.test.TestModuleFactory_Package is

   package AbstractInputAutomationFactory_Package renames Standard.org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
   package BlankModuleConfigurationJPanel_Package renames Standard.org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package Reference_Types is
   subtype BlankModuleConfigurationJPanel_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access;
   use type BlankModuleConfigurationJPanel_Access;
   subtype BlankModuleConfigurationJPanel_Access_Array is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array;
   use type BlankModuleConfigurationJPanel_Access_Array;
   subtype BlankModuleConfigurationJPanel_Access_Array_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access;
   use type BlankModuleConfigurationJPanel_Access_Array_Access;
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array;
   use type BlankModuleConfigurationJPanel_Access_Array_Access_Array;
   subtype BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package_References.BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   use type BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access;
   subtype RunnableInterface_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access;
   use type RunnableInterface_Access;
   subtype RunnableInterface_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array;
   use type RunnableInterface_Access_Array;
   subtype RunnableInterface_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access;
   use type RunnableInterface_Access_Array_Access;
   subtype RunnableInterface_Access_Array_Access_Array is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array;
   use type RunnableInterface_Access_Array_Access_Array;
   subtype RunnableInterface_Access_Array_Access_Array_Access is org.allbinary.thread.RunnableInterface_Package_References.RunnableInterface_Access_Array_Access_Array_Access;
   use type RunnableInterface_Access_Array_Access_Array_Access;
   subtype JPanel_Access is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access;
   use type JPanel_Access;
   subtype JPanel_Access_Array is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array;
   use type JPanel_Access_Array;
   subtype JPanel_Access_Array_Access is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array_Access;
   use type JPanel_Access_Array_Access;
   subtype JPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array_Access_Array;
   use type JPanel_Access_Array_Access_Array;
   subtype JPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.test.JPanel_Package_References.JPanel_Access_Array_Access_Array_Access;
   use type JPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TestModuleFactory_Access is org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References.TestModuleFactory_Access;
   function "=" (Left, Right : TestModuleFactory_Access) return Boolean renames org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References."=";
   subtype TestModuleFactory_Access_Array is org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References.TestModuleFactory_Access_Array;
   function "=" (Left, Right : TestModuleFactory_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References."=";
   subtype TestModuleFactory_Access_Array_Access is org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References.TestModuleFactory_Access_Array_Access;
   function "=" (Left, Right : TestModuleFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References."=";
   subtype TestModuleFactory_Access_Array_Access_Array is org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References.TestModuleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TestModuleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References."=";
   subtype TestModuleFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References.TestModuleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestModuleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.test.TestModuleFactory_Package_References."=";

   type TestModuleFactory is new AbstractInputAutomationFactory with record
      blankModuleConfigurationJPanel : BlankModuleConfigurationJPanel_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out TestModuleFactory'Class);
   function Create return TestModuleFactory_Access;
   function getName (This : in out TestModuleFactory) return Unbounded_String;
   function getConfigurationJPanel (This : in out TestModuleFactory) return JPanel_Access;
   function getInstance (This : in out TestModuleFactory) return RunnableInterface_Access;

end org.allbinary.input.automation.module.game.test.TestModuleFactory_Package;


