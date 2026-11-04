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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References is
   type GenericProfileActionJPanel_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class;
   type GenericProfileActionJPanel_Access_Array is array (Natural range <>) of GenericProfileActionJPanel_Access;
   type GenericProfileActionJPanel_Access_Array_Access is access all GenericProfileActionJPanel_Access_Array;
   type GenericProfileActionJPanel_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionJPanel_Access_Array_Access;
   type GenericProfileActionJPanel_Access_Array_Access_Array_Access is access all GenericProfileActionJPanel_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.JPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.JPanel_Package;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package is

   package GenericProfileActionScriptJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype GenericProfileActionScriptJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access;
   use type GenericProfileActionScriptJPanel_Access;
   subtype GenericProfileActionScriptJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array;
   use type GenericProfileActionScriptJPanel_Access_Array;
   subtype GenericProfileActionScriptJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array_Access;
   use type GenericProfileActionScriptJPanel_Access_Array_Access;
   subtype GenericProfileActionScriptJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array_Access_Array;
   use type GenericProfileActionScriptJPanel_Access_Array_Access_Array;
   subtype GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScriptJPanel_Package_References.GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access;
   use type GenericProfileActionScriptJPanel_Access_Array_Access_Array_Access;
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
   subtype GenericProfileAction_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access;
   use type GenericProfileAction_Access;
   subtype GenericProfileAction_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array;
   use type GenericProfileAction_Access_Array;
   subtype GenericProfileAction_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array_Access;
   use type GenericProfileAction_Access_Array_Access;
   subtype GenericProfileAction_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array_Access_Array;
   use type GenericProfileAction_Access_Array_Access_Array;
   subtype GenericProfileAction_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package_References.GenericProfileAction_Access_Array_Access_Array_Access;
   use type GenericProfileAction_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfileActionJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access;
   function "=" (Left, Right : GenericProfileActionJPanel_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References."=";
   subtype GenericProfileActionJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array;
   function "=" (Left, Right : GenericProfileActionJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References."=";
   subtype GenericProfileActionJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References."=";
   subtype GenericProfileActionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileActionJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References."=";
   subtype GenericProfileActionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References."=";

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


