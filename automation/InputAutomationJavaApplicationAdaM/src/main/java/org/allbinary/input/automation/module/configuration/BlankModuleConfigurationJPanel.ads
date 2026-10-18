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
with org.allbinary.input.automation.module.configuration.JPanel_Package; use org.allbinary.input.automation.module.configuration.JPanel_Package;

package org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package is


   type BlankModuleConfigurationJPanel is tagged;
   type BlankModuleConfigurationJPanel_Access is access all BlankModuleConfigurationJPanel'Class;
   type BlankModuleConfigurationJPanel_Access_Array is array (Natural range <>) of BlankModuleConfigurationJPanel_Access;
   type BlankModuleConfigurationJPanel_Access_Array_Access is access all BlankModuleConfigurationJPanel_Access_Array;
   type BlankModuleConfigurationJPanel_Access_Array_Access_Array is array (Natural range <>) of BlankModuleConfigurationJPanel_Access_Array_Access;
   type BlankModuleConfigurationJPanel_Access_Array_Access_Array_Access is access all BlankModuleConfigurationJPanel_Access_Array_Access_Array;

   type BlankModuleConfigurationJPanel is new JPanel with record
      jLabel1 : JLabel_Access;
   end record;

   procedure Initialize (This : in out BlankModuleConfigurationJPanel'Class);
   function Create return BlankModuleConfigurationJPanel_Access;
   procedure initComponents (This : in out BlankModuleConfigurationJPanel);

end org.allbinary.input.automation.module.configuration.BlankModuleConfigurationJPanel_Package;


