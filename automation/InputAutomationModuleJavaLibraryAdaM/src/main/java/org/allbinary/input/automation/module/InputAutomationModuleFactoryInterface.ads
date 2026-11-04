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

limited with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
package org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References is
   type InputAutomationModuleFactoryInterface_Access is access all org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class;
   type InputAutomationModuleFactoryInterface_Access_Array is array (Natural range <>) of InputAutomationModuleFactoryInterface_Access;
   type InputAutomationModuleFactoryInterface_Access_Array_Access is access all InputAutomationModuleFactoryInterface_Access_Array;
   type InputAutomationModuleFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleFactoryInterface_Access_Array_Access;
   type InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access is access all InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;

with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
limited with org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.thread.RunnableInterface_Package_References;
limited with org.allbinary.input.automation.module.JPanel_Package;
with org.allbinary.input.automation.module.JPanel_Package_References;

package org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package is

   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package Reference_Types is
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
   subtype JPanel_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access;
   use type JPanel_Access;
   subtype JPanel_Access_Array is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array;
   use type JPanel_Access_Array;
   subtype JPanel_Access_Array_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access;
   use type JPanel_Access_Array_Access;
   subtype JPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access_Array;
   use type JPanel_Access_Array_Access_Array;
   subtype JPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.JPanel_Package_References.JPanel_Access_Array_Access_Array_Access;
   use type JPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationModuleFactoryInterface_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";

   type InputAutomationModuleFactoryInterface is new Java_Object with null record;

   procedure Initialize (This : in out InputAutomationModuleFactoryInterface'Class);
   function Create return InputAutomationModuleFactoryInterface_Access;
   function getName (This : in out InputAutomationModuleFactoryInterface) return Unbounded_String;
   function getConfigurationJPanel (This : in out InputAutomationModuleFactoryInterface) return JPanel_Access;
   function getHelpSet (This : in out InputAutomationModuleFactoryInterface) return HelpSet_Access;
   function getInstance (This : in out InputAutomationModuleFactoryInterface) return RunnableInterface_Access;

end org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;


