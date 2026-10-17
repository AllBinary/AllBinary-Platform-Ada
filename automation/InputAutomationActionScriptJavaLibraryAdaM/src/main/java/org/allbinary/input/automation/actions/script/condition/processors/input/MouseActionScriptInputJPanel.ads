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
--  with java.awt.event.InputEvent_Package; use java.awt.event.InputEvent_Package;
with org.allbinary.input.automation.robot.InputRobot_Package; use org.allbinary.input.automation.robot.InputRobot_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.TempInputRobotNames_Package; use org.allbinary.input.automation.robot.TempInputRobotNames_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.ComboBoxModel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ComboBoxModel_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package is

   package InputRobot_Package renames Standard.org.allbinary.input.automation.robot.InputRobot_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package TempInputRobotNames_Package renames Standard.org.allbinary.input.automation.robot.TempInputRobotNames_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type MouseActionScriptInputJPanel is tagged;
   type MouseActionScriptInputJPanel_Access is access all MouseActionScriptInputJPanel'Class;
   type MouseActionScriptInputJPanel_Access_Array is array (Natural range <>) of MouseActionScriptInputJPanel_Access;
   type MouseActionScriptInputJPanel_Access_Array_Access is access all MouseActionScriptInputJPanel_Access_Array;

   type MouseActionScriptInputJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      mouseActionScriptInputInterface : MouseActionScriptInputInterface_Access;
      button1JCheckBox : JCheckBox_Access;
      button2JCheckBox : JCheckBox_Access;
      inputAutomationTypeJComboBox : JComboBox_Access;
      inputTypeJLabel : JLabel_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      jLabel3 : JLabel_Access;
      jLabel4 : JLabel_Access;
      jLabel5 : JLabel_Access;
      jLabel6 : JLabel_Access;
      mouseActionJButton : JButton_Access;
      mouseActionJDialog : JDialog_Access;
      mouseDelayJTextField : JTextField_Access;
      mouseXJTextField : JTextField_Access;
      mouseYJTextField : JTextField_Access;
      okJButton : JButton_Access;
      titleJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out MouseActionScriptInputJPanel'Class; mouseActionScriptInputInterface_Param : access MouseActionScriptInputInterface_Package.MouseActionScriptInputInterface'Class);
   function Create (mouseActionScriptInputInterface_Param : access MouseActionScriptInputInterface_Package.MouseActionScriptInputInterface'Class) return MouseActionScriptInputJPanel_Access;
   procedure set (This : in out MouseActionScriptInputJPanel);
   procedure updateInputType (This : in out MouseActionScriptInputJPanel);
   procedure update (This : in out MouseActionScriptInputJPanel);
   function getMouseActionJDialog (This : in out MouseActionScriptInputJPanel) return JDialog_Access;
   procedure setMouseActionJDialog (This : in out MouseActionScriptInputJPanel; mouseActionJDialog_Param : access JDialog_Package.JDialog'Class);
   procedure initComponents (This : in out MouseActionScriptInputJPanel);
   procedure button2JCheckBoxActionPerformed (This : in out MouseActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure okJButtonActionPerformed (This : in out MouseActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure mouseActionJButtonActionPerformed (This : in out MouseActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package;


