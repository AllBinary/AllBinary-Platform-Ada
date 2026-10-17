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
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;

package org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package is

   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;

   type InputAutomationModuleFactoryInterface is tagged;
   type InputAutomationModuleFactoryInterface_Access is access all InputAutomationModuleFactoryInterface'Class;
   type InputAutomationModuleFactoryInterface_Access_Array is array (Natural range <>) of InputAutomationModuleFactoryInterface_Access;
   type InputAutomationModuleFactoryInterface_Access_Array_Access is access all InputAutomationModuleFactoryInterface_Access_Array;

   type InputAutomationModuleFactoryInterface is new Java_Object with null record;

   procedure Initialize (This : in out InputAutomationModuleFactoryInterface'Class);
   function Create return InputAutomationModuleFactoryInterface_Access;
   function getName (This : in out InputAutomationModuleFactoryInterface) return Unbounded_String;
   procedure getName (This : in out InputAutomationModuleFactoryInterface);
   function getConfigurationJPanel (This : in out InputAutomationModuleFactoryInterface) return JPanel_Access;
   procedure getConfigurationJPanel (This : in out InputAutomationModuleFactoryInterface);
   function getHelpSet (This : in out InputAutomationModuleFactoryInterface) return HelpSet_Access;
   procedure getHelpSet (This : in out InputAutomationModuleFactoryInterface);
   function getInstance (This : in out InputAutomationModuleFactoryInterface) return RunnableInterface_Access;
   procedure getInstance (This : in out InputAutomationModuleFactoryInterface);

end org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;


