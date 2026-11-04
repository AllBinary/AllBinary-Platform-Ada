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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References is
   type RemoveActionScriptItemJPanel_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package.RemoveActionScriptItemJPanel'Class;
   type RemoveActionScriptItemJPanel_Access_Array is array (Natural range <>) of RemoveActionScriptItemJPanel_Access;
   type RemoveActionScriptItemJPanel_Access_Array_Access is access all RemoveActionScriptItemJPanel_Access_Array;
   type RemoveActionScriptItemJPanel_Access_Array_Access_Array is array (Natural range <>) of RemoveActionScriptItemJPanel_Access_Array_Access;
   type RemoveActionScriptItemJPanel_Access_Array_Access_Array_Access is access all RemoveActionScriptItemJPanel_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.Panel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.Panel_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package is

   package ProfileActionScriptConditionInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   package GenericProfileActionJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype ProfileActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access;
   use type ProfileActionScriptConditionInterface_Access;
   subtype ProfileActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array;
   use type ProfileActionScriptConditionInterface_Access_Array;
   subtype ProfileActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access;
   use type ProfileActionScriptConditionInterface_Access_Array_Access;
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   use type ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access;
   use type ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access;
   subtype GenericProfileActionJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access;
   use type GenericProfileActionJPanel_Access;
   subtype GenericProfileActionJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array;
   use type GenericProfileActionJPanel_Access_Array;
   subtype GenericProfileActionJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array_Access;
   use type GenericProfileActionJPanel_Access_Array_Access;
   subtype GenericProfileActionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array_Access_Array;
   use type GenericProfileActionJPanel_Access_Array_Access_Array;
   subtype GenericProfileActionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionJPanel_Package_References.GenericProfileActionJPanel_Access_Array_Access_Array_Access;
   use type GenericProfileActionJPanel_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype RemoveActionScriptItemJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References.RemoveActionScriptItemJPanel_Access;
   function "=" (Left, Right : RemoveActionScriptItemJPanel_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References."=";
   subtype RemoveActionScriptItemJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References.RemoveActionScriptItemJPanel_Access_Array;
   function "=" (Left, Right : RemoveActionScriptItemJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References."=";
   subtype RemoveActionScriptItemJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References.RemoveActionScriptItemJPanel_Access_Array_Access;
   function "=" (Left, Right : RemoveActionScriptItemJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References."=";
   subtype RemoveActionScriptItemJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References.RemoveActionScriptItemJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : RemoveActionScriptItemJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References."=";
   subtype RemoveActionScriptItemJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References.RemoveActionScriptItemJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoveActionScriptItemJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package_References."=";

   type RemoveActionScriptItemJPanel is new Panel with record
      logUtil : LogUtil_Access;
      genericProfileActionJPanel : GenericProfileActionJPanel_Access;
      profileActionScriptConditionInterface : ProfileActionScriptConditionInterface_Access;
      removeJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out RemoveActionScriptItemJPanel'Class; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; profileActionScriptConditionInterface_Param : access ProfileActionScriptConditionInterface_Package.ProfileActionScriptConditionInterface'Class);
   function Create (genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; profileActionScriptConditionInterface_Param : access ProfileActionScriptConditionInterface_Package.ProfileActionScriptConditionInterface'Class) return RemoveActionScriptItemJPanel_Access;
   procedure initComponents (This : in out RemoveActionScriptItemJPanel);
   procedure removeJButtonActionPerformed (This : in out RemoveActionScriptItemJPanel; evt_Param : access ActionEvent_Package.ActionEvent'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.RemoveActionScriptItemJPanel_Package;


