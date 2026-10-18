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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.actions.script.condition.JPanel_Package; use org.allbinary.input.automation.actions.script.condition.JPanel_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;

package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AlwaysActionScriptConditionJPanel is tagged;
   type AlwaysActionScriptConditionJPanel_Access is access all AlwaysActionScriptConditionJPanel'Class;
   type AlwaysActionScriptConditionJPanel_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionJPanel_Access;
   type AlwaysActionScriptConditionJPanel_Access_Array_Access is access all AlwaysActionScriptConditionJPanel_Access_Array;
   type AlwaysActionScriptConditionJPanel_Access_Array_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionJPanel_Access_Array_Access;
   type AlwaysActionScriptConditionJPanel_Access_Array_Access_Array_Access is access all AlwaysActionScriptConditionJPanel_Access_Array_Access_Array;

   type AlwaysActionScriptConditionJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      alwaysActionScriptConditionInterface : AlwaysActionScriptConditionInterface_Access;
      alwaysActionJButton : JButton_Access;
      alwaysActionJDialog : JDialog_Access;
      alwaysJComboBox : JComboBox_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      okJButton : JButton_Access;
      titleJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out AlwaysActionScriptConditionJPanel'Class; alwaysActionScriptConditionInterface_Param : access AlwaysActionScriptConditionInterface_Package.AlwaysActionScriptConditionInterface'Class);
   function Create (alwaysActionScriptConditionInterface_Param : access AlwaysActionScriptConditionInterface_Package.AlwaysActionScriptConditionInterface'Class) return AlwaysActionScriptConditionJPanel_Access;
   procedure set (This : in out AlwaysActionScriptConditionJPanel);
   procedure update (This : in out AlwaysActionScriptConditionJPanel);
   function getAlwaysActionJDialog (This : in out AlwaysActionScriptConditionJPanel) return JDialog_Access;
   procedure setAlwaysActionJDialog (This : in out AlwaysActionScriptConditionJPanel; alwaysActionJDialog_Param : access JDialog_Package.JDialog'Class);
   procedure initComponents (This : in out AlwaysActionScriptConditionJPanel);
   procedure okJButtonActionPerformed (This : in out AlwaysActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure alwaysActionJButtonActionPerformed (This : in out AlwaysActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package;


