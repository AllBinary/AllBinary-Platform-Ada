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
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package;

package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TimeIntervalActionScriptConditionJPanel is tagged;
   type TimeIntervalActionScriptConditionJPanel_Access is access all TimeIntervalActionScriptConditionJPanel'Class;
   type TimeIntervalActionScriptConditionJPanel_Access_Array is array (Natural range <>) of TimeIntervalActionScriptConditionJPanel_Access;
   type TimeIntervalActionScriptConditionJPanel_Access_Array_Access is access all TimeIntervalActionScriptConditionJPanel_Access_Array;

   type TimeIntervalActionScriptConditionJPanel is new JPanel with record
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


