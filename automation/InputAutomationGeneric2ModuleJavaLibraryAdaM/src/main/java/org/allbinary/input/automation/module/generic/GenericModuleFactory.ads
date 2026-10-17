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
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package; use org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package; use org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;

package org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package is

   package AbstractInputAutomationFactory_Package renames org.allbinary.input.automation.module.AbstractInputAutomationFactory_Package;
   package InputAutomationActionInterface_Package renames org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package InputAutomationModuleData_Package renames org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   package GenericModuleConfigurationJPanel_Package renames org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;
   package GenericProfile_Package renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
   package NoImageComparatorConstraints_Package renames org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;
   package NoMotionRectangleConstraints_Package renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;
   package RunnableInterface_Package renames org.allbinary.thread.RunnableInterface_Package;

   type GenericModuleFactory is tagged;
   type GenericModuleFactory_Access is access all GenericModuleFactory'Class;
   type GenericModuleFactory_Access_Array is array (Natural range <>) of GenericModuleFactory_Access;
   type GenericModuleFactory_Access_Array_Access is access all GenericModuleFactory_Access_Array;

   type GenericModuleFactory is new AbstractInputAutomationFactory with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out GenericModuleFactory'Class);
   function Create return GenericModuleFactory_Access;
   function getInstance (This : in out GenericModuleFactory) return RunnableInterface_Access;
   procedure getInstance (This : in out GenericModuleFactory);

end org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package;


