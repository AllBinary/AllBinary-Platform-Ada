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
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.Panel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.Panel_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package is

   package ProfileActionScriptConditionInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   package GenericProfileAction_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
   package GenericProfileActionJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type RemoveActionScriptItemJPanel is tagged;
   type RemoveActionScriptItemJPanel_Access is access all RemoveActionScriptItemJPanel'Class;
   type RemoveActionScriptItemJPanel_Access_Array is array (Natural range <>) of RemoveActionScriptItemJPanel_Access;
   type RemoveActionScriptItemJPanel_Access_Array_Access is access all RemoveActionScriptItemJPanel_Access_Array;

   type RemoveActionScriptItemJPanel is new Panel with record
      logUtil : LogUtil_Access;
      genericProfileActionJPanel : GenericProfileActionJPanel_Access;
      profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access;
      removeJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out RemoveActionScriptItemJPanel'Class; genericProfileActionJPanel : GenericProfileActionJPanel_Access; profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access);
   function Create (genericProfileActionJPanel : GenericProfileActionJPanel_Access; profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access) return RemoveActionScriptItemJPanel_Access;
   procedure initComponents (This : in out RemoveActionScriptItemJPanel);
   procedure removeJButtonActionPerformed (This : in out RemoveActionScriptItemJPanel; evt : ActionEvent_Access);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package;


