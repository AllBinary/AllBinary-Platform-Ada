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
limited with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package;
package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References is
   type TimeIntervalActionScriptConditionJPanel_Access is access all org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package.TimeIntervalActionScriptConditionJPanel'Class;
   type TimeIntervalActionScriptConditionJPanel_Access_Array is array (Natural range <>) of TimeIntervalActionScriptConditionJPanel_Access;
   type TimeIntervalActionScriptConditionJPanel_Access_Array_Access is access all TimeIntervalActionScriptConditionJPanel_Access_Array;
   type TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array is array (Natural range <>) of TimeIntervalActionScriptConditionJPanel_Access_Array_Access;
   type TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access is access all TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array;
   type TimeIntervalActionScriptConditionJPanel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeIntervalActionScriptConditionJPanel_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeIntervalActionScriptConditionJPanel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeIntervalActionScriptConditionJPanel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeIntervalActionScriptConditionJPanel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeIntervalActionScriptConditionJPanel_Access_Array_Access is (if Value /= null and then Value.all in TimeIntervalActionScriptConditionJPanel_Access_Array_Object'Class then TimeIntervalActionScriptConditionJPanel_Access_Array_Object'Class (Value.all).Value else null);
   type TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Object'Class then TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References;

with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References;
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
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
--  with javax.swing.GroupLayout_Package; use javax.swing.GroupLayout_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JTextField_Package; use javax.swing.JTextField_Package;
--  with javax.swing.LayoutStyle_Package; use javax.swing.LayoutStyle_Package;
limited with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package is

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
   subtype TimeIntervalActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access;
   use type TimeIntervalActionScriptConditionInterface_Access;
   subtype TimeIntervalActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array;
   use type TimeIntervalActionScriptConditionInterface_Access_Array;
   subtype TimeIntervalActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array_Access;
   use type TimeIntervalActionScriptConditionInterface_Access_Array_Access;
   subtype TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array;
   use type TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array;
   subtype TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access;
   use type TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TimeIntervalActionScriptConditionJPanel_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access;
   function "=" (Left, Right : TimeIntervalActionScriptConditionJPanel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References."=";
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array;
   function "=" (Left, Right : TimeIntervalActionScriptConditionJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References."=";
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array_Access;
   function "=" (Left, Right : TimeIntervalActionScriptConditionJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References."=";
   function Java_Box (Value : TimeIntervalActionScriptConditionJPanel_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.Java_Box;
   function Java_Unbox_TimeIntervalActionScriptConditionJPanel_Access_Array (Value : access Java_Object'Class) return TimeIntervalActionScriptConditionJPanel_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.Java_Unbox_TimeIntervalActionScriptConditionJPanel_Access_Array;
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References."=";
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References."=";
   function Java_Box (Value : TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.Java_Box;
   function Java_Unbox_TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.Java_Unbox_TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array;

   type TimeIntervalActionScriptConditionJPanel is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      timeIntervalActionScriptConditionInterface : TimeIntervalActionScriptConditionInterface_Access;
      jLabel1 : JLabel_Access;
      jLabel2 : JLabel_Access;
      okJButton : JButton_Access;
      timeIntervalActionJButton : JButton_Access;
      timeIntervalActionJDialog : JDialog_Access;
      timeIntervalJTextField : JTextField_Access;
      titleJLabel : JLabel_Access;
   end record;

   procedure Initialize (This : in out TimeIntervalActionScriptConditionJPanel'Class; timeIntervalActionScriptConditionInterface_Param : access TimeIntervalActionScriptConditionInterface_Package.TimeIntervalActionScriptConditionInterface'Class);
   function Create (timeIntervalActionScriptConditionInterface_Param : access TimeIntervalActionScriptConditionInterface_Package.TimeIntervalActionScriptConditionInterface'Class) return TimeIntervalActionScriptConditionJPanel_Access;
   procedure set (This : in out TimeIntervalActionScriptConditionJPanel);
   procedure update (This : in out TimeIntervalActionScriptConditionJPanel);
   function getTimeIntervalJTextField (This : in out TimeIntervalActionScriptConditionJPanel) return JTextField_Access;
   procedure setTimeIntervalJTextField (This : in out TimeIntervalActionScriptConditionJPanel; timeIntervalJTextField_Param : access JTextField_Package.JTextField'Class);
   function getTimeIntervalActionJDialog (This : in out TimeIntervalActionScriptConditionJPanel) return JDialog_Access;
   procedure setTimeIntervalActionJDialog (This : in out TimeIntervalActionScriptConditionJPanel; timeIntervalActionJDialog_Param : access JDialog_Package.JDialog'Class);
   procedure initComponents (This : in out TimeIntervalActionScriptConditionJPanel);
   procedure okJButtonActionPerformed (This : in out TimeIntervalActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure timeIntervalActionJButtonActionPerformed (This : in out TimeIntervalActionScriptConditionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package;


