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
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.JPanel_Package; use org.allbinary.input.automation.module.JPanel_Package;

package org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package is


   type AbstractInputAutomationFactory is tagged;
   type AbstractInputAutomationFactory_Access is access all AbstractInputAutomationFactory'Class;
   type AbstractInputAutomationFactory_Access_Array is array (Natural range <>) of AbstractInputAutomationFactory_Access;
   type AbstractInputAutomationFactory_Access_Array_Access is access all AbstractInputAutomationFactory_Access_Array;
   type AbstractInputAutomationFactory_Access_Array_Access_Array is array (Natural range <>) of AbstractInputAutomationFactory_Access_Array_Access;
   type AbstractInputAutomationFactory_Access_Array_Access_Array_Access is access all AbstractInputAutomationFactory_Access_Array_Access_Array;

   type AbstractInputAutomationFactory is new InputAutomationModuleFactoryInterface with record
      name : Unbounded_String;
      jPanel : JPanel_Access;
      helpSet : HelpSet_Access;
   end record;

   procedure Initialize (This : in out AbstractInputAutomationFactory'Class; name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class; helpSet_Param : access HelpSet_Package.HelpSet'Class);
   function Create (name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class; helpSet_Param : access HelpSet_Package.HelpSet'Class) return AbstractInputAutomationFactory_Access;
   procedure Initialize (This : in out AbstractInputAutomationFactory'Class; name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class);
   function Create (name : Unbounded_String; jPanel_Param : access JPanel_Package.JPanel'Class) return AbstractInputAutomationFactory_Access;
   function getName (This : in out AbstractInputAutomationFactory) return Unbounded_String;
   function getConfigurationJPanel (This : in out AbstractInputAutomationFactory) return JPanel_Access;
   function getHelpSet (This : in out AbstractInputAutomationFactory) return HelpSet_Access;

end org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;


