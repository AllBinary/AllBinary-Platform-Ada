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
--  with java.net.URL_Package; use java.net.URL_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
with org.allbinary.logic.java.help.JavaHelpUtil_Package; use org.allbinary.logic.java.help.JavaHelpUtil_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;

package org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package is

   package JavaHelpUtil_Package renames org.allbinary.logic.java.help.JavaHelpUtil_Package;

   type AbstractInputAutomationFactory is tagged;
   type AbstractInputAutomationFactory_Access is access all AbstractInputAutomationFactory'Class;
   type AbstractInputAutomationFactory_Access_Array is array (Natural range <>) of AbstractInputAutomationFactory_Access;
   type AbstractInputAutomationFactory_Access_Array_Access is access all AbstractInputAutomationFactory_Access_Array;

   type AbstractInputAutomationFactory is new InputAutomationModuleFactoryInterface with record
      name : Unbounded_String;
      jPanel : JPanel_Access;
      helpSet : HelpSet_Access;
   end record;

   procedure Initialize (This : in out AbstractInputAutomationFactory'Class; name : Unbounded_String; jPanel : JPanel_Access; helpSet : HelpSet_Access);
   function Create (name : Unbounded_String; jPanel : JPanel_Access; helpSet : HelpSet_Access) return AbstractInputAutomationFactory_Access;
   function getName (This : in out AbstractInputAutomationFactory) return Unbounded_String;
   procedure getName (This : in out AbstractInputAutomationFactory);
   function getConfigurationJPanel (This : in out AbstractInputAutomationFactory) return JPanel_Access;
   procedure getConfigurationJPanel (This : in out AbstractInputAutomationFactory);
   function getHelpSet (This : in out AbstractInputAutomationFactory) return HelpSet_Access;
   procedure getHelpSet (This : in out AbstractInputAutomationFactory);

end org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;


