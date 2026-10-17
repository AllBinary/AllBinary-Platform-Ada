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
with org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package; use org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.JPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.JPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package is

   package JTreeInterfaceFactory_Package renames Standard.org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
   package AlwaysActionScriptCondition_Package renames Standard.org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
   package ColorAtActionScriptCondition_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;
   package ProfileActionScriptConditionInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   package TimeIntervalActionScriptCondition_Package renames Standard.org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
   package GenericProfileActionScriptJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type GenericProfileActionJPanel is tagged;
   type GenericProfileActionJPanel_Access is access all GenericProfileActionJPanel'Class;
   type GenericProfileActionJPanel_Access_Array is array (Natural range <>) of GenericProfileActionJPanel_Access;
   type GenericProfileActionJPanel_Access_Array_Access is access all GenericProfileActionJPanel_Access_Array;

   type GenericProfileActionJPanel is new JPanel with record
      logUtil : LogUtil_Access;
      genericProfileAction : GenericProfileAction_Access;
      genericProfileActionScriptJPanel : GenericProfileActionScriptJPanel_Access;
      blankProfileActionScriptJPanel : JPanel_Access;
      genericProfileActionScriptJScrollPane : JScrollPane_Access;
      ifJLabel : JLabel_Access;
      newAlwaysJButton : JButton_Access;
      newColorAtJButton : JButton_Access;
      newTimeIntervalJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out GenericProfileActionJPanel'Class);
   function Create return GenericProfileActionJPanel_Access;
   procedure updateProfileActionUI (This : in out GenericProfileActionJPanel);
   function getGenericProfileAction (This : in out GenericProfileActionJPanel) return GenericProfileAction_Access;
   procedure setGenericProfileAction (This : in out GenericProfileActionJPanel; genericProfileAction_Param : access GenericProfileAction_Package.GenericProfileAction'Class);
   function getGenericProfileActionScriptJPanel (This : in out GenericProfileActionJPanel) return GenericProfileActionScriptJPanel_Access;
   procedure setGenericProfileActionScriptJPanel (This : in out GenericProfileActionJPanel; genericProfileActionScriptJPanel_Param : access GenericProfileActionScriptJPanel_Package.GenericProfileActionScriptJPanel'Class);
   procedure initComponents (This : in out GenericProfileActionJPanel);
   procedure newTimeIntervalJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure newAlwaysJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure newColorAtJButtonActionPerformed (This : in out GenericProfileActionJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;


