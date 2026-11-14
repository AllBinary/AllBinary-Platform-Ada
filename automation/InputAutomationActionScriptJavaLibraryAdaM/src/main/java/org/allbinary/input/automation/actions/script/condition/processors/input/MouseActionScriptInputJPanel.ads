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

with AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References is
   type MouseActionScriptInputJPanel_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package.MouseActionScriptInputJPanel'Class;
   type MouseActionScriptInputJPanel_Access_Array is array (Natural range <>) of MouseActionScriptInputJPanel_Access;
   type MouseActionScriptInputJPanel_Access_Array_Access is access all MouseActionScriptInputJPanel_Access_Array;
   type MouseActionScriptInputJPanel_Access_Array_Access_Array is array (Natural range <>) of MouseActionScriptInputJPanel_Access_Array_Access;
   type MouseActionScriptInputJPanel_Access_Array_Access_Array_Access is access all MouseActionScriptInputJPanel_Access_Array_Access_Array;
   type MouseActionScriptInputJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MouseActionScriptInputJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : MouseActionScriptInputJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MouseActionScriptInputJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MouseActionScriptInputJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MouseActionScriptInputJPanel_Access_Array_Access is (if Value /= null and then Value.all in MouseActionScriptInputJPanel_Access_Array_Object'Class then MouseActionScriptInputJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type MouseActionScriptInputJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MouseActionScriptInputJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MouseActionScriptInputJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MouseActionScriptInputJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MouseActionScriptInputJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MouseActionScriptInputJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MouseActionScriptInputJPanel_Access_Array_Access_Array_Object'Class then MouseActionScriptInputJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.Insets_Package; use java.awt.Insets_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.BorderFactory_Package; use javax.swing.BorderFactory_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JCheckBox_Package; use javax.swing.JCheckBox_Package;
--  with javax.swing.JComboBox_Package; use javax.swing.JComboBox_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JTextField_Package; use javax.swing.JTextField_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;
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
   function Java_Box (Value : MouseActionScriptInputJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.Java_Box;
   function Java_Unbox_MouseActionScriptInputJPanel_Access_Array (Value : access Java_Object'Class) return MouseActionScriptInputJPanel_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.Java_Unbox_MouseActionScriptInputJPanel_Access_Array;
   subtype MouseActionScriptInputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : MouseActionScriptInputJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References."=";
   subtype MouseActionScriptInputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInputJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References."=";
   function Java_Box (Value : MouseActionScriptInputJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.Java_Box;
   function Java_Unbox_MouseActionScriptInputJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return MouseActionScriptInputJPanel_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.Java_Unbox_MouseActionScriptInputJPanel_Access_Array_Access_Array;

   type MouseActionScriptInputJPanel is new Java_Object with record
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


