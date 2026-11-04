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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References is
   type KeyboardActionScriptInputJPanel_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package.KeyboardActionScriptInputJPanel'Class;
   type KeyboardActionScriptInputJPanel_Access_Array is array (Natural range <>) of KeyboardActionScriptInputJPanel_Access;
   type KeyboardActionScriptInputJPanel_Access_Array_Access is access all KeyboardActionScriptInputJPanel_Access_Array;
   type KeyboardActionScriptInputJPanel_Access_Array_Access_Array is array (Natural range <>) of KeyboardActionScriptInputJPanel_Access_Array_Access;
   type KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access is access all KeyboardActionScriptInputJPanel_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype KeyboardActionScriptInputInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access;
   use type KeyboardActionScriptInputInterface_Access;
   subtype KeyboardActionScriptInputInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array;
   use type KeyboardActionScriptInputInterface_Access_Array;
   subtype KeyboardActionScriptInputInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access;
   use type KeyboardActionScriptInputInterface_Access_Array_Access;
   subtype KeyboardActionScriptInputInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access_Array;
   use type KeyboardActionScriptInputInterface_Access_Array_Access_Array;
   subtype KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access;
   use type KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype KeyboardActionScriptInputJPanel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";

   type KeyboardActionScriptInputJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      keyActionScriptInputInterface : KeyboardActionScriptInputInterface_Access;
      addKeyJLabel : JLabel_Access;
      delayBetweenJLabel : JLabel_Access;
      delayJTextField : JTextField_Access;
      holdTimeJLabel : JLabel_Access;
      inputAutomationTypeJComboBox : JComboBox_Access;
      inputTypeJLabel : JLabel_Access;
      jLabel1 : JLabel_Access;
      jPanel1 : JPanel_Access;
      keyActionJButton : JButton_Access;
      keyActionJDialog : JDialog_Access;
      keyIntegerJComboBox : JComboBox_Access;
      keyNameJComboBox : JComboBox_Access;
      normalJRadioButton : JRadioButton_Access;
      okJButton : JButton_Access;
      pressJRadioButton : JRadioButton_Access;
      releaseJRadioButton : JRadioButton_Access;
      sequenceJRadioButton : JRadioButton_Access;
      simultaneousJRadioButton : JRadioButton_Access;
      testJLabel : JLabel_Access;
      textJTextField : JTextField_Access;
      timeJTextField : JTextField_Access;
      titleJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out KeyboardActionScriptInputJPanel'Class; keyActionScriptInputInterface_Param : access KeyboardActionScriptInputInterface_Package.KeyboardActionScriptInputInterface'Class);
   function Create (keyActionScriptInputInterface_Param : access KeyboardActionScriptInputInterface_Package.KeyboardActionScriptInputInterface'Class) return KeyboardActionScriptInputJPanel_Access;
   procedure set (This : in out KeyboardActionScriptInputJPanel);
   procedure updateInputType (This : in out KeyboardActionScriptInputJPanel);
   function getSelectedKey (This : in out KeyboardActionScriptInputJPanel) return Integer;
   procedure updateKeys (This : in out KeyboardActionScriptInputJPanel);
   procedure update (This : in out KeyboardActionScriptInputJPanel);
   function getKeyActionJDialog (This : in out KeyboardActionScriptInputJPanel) return JDialog_Access;
   procedure setKeyActionJDialog (This : in out KeyboardActionScriptInputJPanel; keyActionJDialog_Param : access JDialog_Package.JDialog'Class);
   procedure initComponents (This : in out KeyboardActionScriptInputJPanel);
   procedure prependText (This : in out KeyboardActionScriptInputJPanel; integer_Id : Integer);
   procedure keyIntegerJComboBoxActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure sequenceJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure simultaneousJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure keyNameJComboBoxActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure okJButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure keyActionJButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure normalJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure releaseJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure pressJRadioButtonActionPerformed (This : in out KeyboardActionScriptInputJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package;


