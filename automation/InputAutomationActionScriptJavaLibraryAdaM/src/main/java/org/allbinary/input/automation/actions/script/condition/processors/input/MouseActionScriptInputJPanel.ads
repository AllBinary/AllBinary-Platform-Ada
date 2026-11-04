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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References is
   type MouseActionScriptInputJPanel_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package.MouseActionScriptInputJPanel'Class;
   type MouseActionScriptInputJPanel_Access_Array is array (Natural range <>) of MouseActionScriptInputJPanel_Access;
   type MouseActionScriptInputJPanel_Access_Array_Access is access all MouseActionScriptInputJPanel_Access_Array;
   type MouseActionScriptInputJPanel_Access_Array_Access_Array is array (Natural range <>) of MouseActionScriptInputJPanel_Access_Array_Access;
   type MouseActionScriptInputJPanel_Access_Array_Access_Array_Access is access all MouseActionScriptInputJPanel_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.InputEvent_Package; use java.awt.event.InputEvent_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.JPanel_Package;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package is

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
   subtype MouseActionScriptInputInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access;
   use type MouseActionScriptInputInterface_Access;
   subtype MouseActionScriptInputInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array;
   use type MouseActionScriptInputInterface_Access_Array;
   subtype MouseActionScriptInputInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access;
   use type MouseActionScriptInputInterface_Access_Array_Access;
   subtype MouseActionScriptInputInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access_Array;
   use type MouseActionScriptInputInterface_Access_Array_Access_Array;
   subtype MouseActionScriptInputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access_Array_Access;
   use type MouseActionScriptInputInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MouseActionScriptInputJPanel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access;
   function "=" (Left, Right : MouseActionScriptInputJPanel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References."=";
   subtype MouseActionScriptInputJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array;
   function "=" (Left, Right : MouseActionScriptInputJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References."=";
   subtype MouseActionScriptInputJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInputJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References."=";
   subtype MouseActionScriptInputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : MouseActionScriptInputJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References."=";
   subtype MouseActionScriptInputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInputJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References."=";

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


