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
with org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package is


   type InputAutomationTypeJPanel is tagged;
   type InputAutomationTypeJPanel_Access is access all InputAutomationTypeJPanel'Class;
   type InputAutomationTypeJPanel_Access_Array is array (Natural range <>) of InputAutomationTypeJPanel_Access;
   type InputAutomationTypeJPanel_Access_Array_Access is access all InputAutomationTypeJPanel_Access_Array;

   type InputAutomationTypeJPanel is new JPanel with record
      inputAutomationTypeJComboBox : JComboBox_Access;
      jLabel1 : JLabel_Access;
   end record;

   procedure Initialize (This : in out InputAutomationTypeJPanel'Class);
   function Create return InputAutomationTypeJPanel_Access;
   function getInputAutomationTypeJComboBox (This : in out InputAutomationTypeJPanel) return JComboBox_Access;
   procedure setInputAutomationTypeJComboBox (This : in out InputAutomationTypeJPanel; inputAutomationTypeJComboBox_Param : access JComboBox'Class);
   procedure initComponents (This : in out InputAutomationTypeJPanel);

end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeJPanel_Package;


