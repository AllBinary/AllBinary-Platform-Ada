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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References is
   type ActionScriptItemJPanel_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package.ActionScriptItemJPanel'Class;
   type ActionScriptItemJPanel_Access_Array is array (Natural range <>) of ActionScriptItemJPanel_Access;
   type ActionScriptItemJPanel_Access_Array_Access is access all ActionScriptItemJPanel_Access_Array;
   type ActionScriptItemJPanel_Access_Array_Access_Array is array (Natural range <>) of ActionScriptItemJPanel_Access_Array_Access;
   type ActionScriptItemJPanel_Access_Array_Access_Array_Access is access all ActionScriptItemJPanel_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.JPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.JPanel_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ActionScriptItemJPanel_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References.ActionScriptItemJPanel_Access;
   function "=" (Left, Right : ActionScriptItemJPanel_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References."=";
   subtype ActionScriptItemJPanel_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References.ActionScriptItemJPanel_Access_Array;
   function "=" (Left, Right : ActionScriptItemJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References."=";
   subtype ActionScriptItemJPanel_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References.ActionScriptItemJPanel_Access_Array_Access;
   function "=" (Left, Right : ActionScriptItemJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References."=";
   subtype ActionScriptItemJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References.ActionScriptItemJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : ActionScriptItemJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References."=";
   subtype ActionScriptItemJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References.ActionScriptItemJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ActionScriptItemJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package_References."=";

   type ActionScriptItemJPanel is new JPanel with record
      childActionScriptConditionJPanel : JPanel_Access;
      newActionScriptConditionJPanel : JPanel_Access;
      newActionScriptInputJPanel : JPanel_Access;
      removeJPanel : JPanel_Access;
      scriptItemJPanel : JPanel_Access;
   end record;

   procedure Initialize (This : in out ActionScriptItemJPanel'Class);
   function Create return ActionScriptItemJPanel_Access;
   function getNewActionScriptInputJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access;
   procedure setNewActionScriptInputJPanel (This : in out ActionScriptItemJPanel; newActionScriptInputJPanel_Param : access JPanel_Package.JPanel'Class);
   function getRemoveJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access;
   procedure setRemoveJPanel (This : in out ActionScriptItemJPanel; removeJPanel_Param : access JPanel_Package.JPanel'Class);
   function getScriptItemJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access;
   procedure setScriptItemJPanel (This : in out ActionScriptItemJPanel; scriptItemJPanel_Param : access JPanel_Package.JPanel'Class);
   function getNewActionScriptConditionJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access;
   procedure setNewActionScriptConditionJPanel (This : in out ActionScriptItemJPanel; newActionScriptConditionJPanel_Param : access JPanel_Package.JPanel'Class);
   function getChildActionScriptConditionJPanel (This : in out ActionScriptItemJPanel) return JPanel_Access;
   procedure setChildActionScriptConditionJPanel (This : in out ActionScriptItemJPanel; childActionScriptConditionJPanel_Param : access JPanel_Package.JPanel'Class);
   procedure initComponents (This : in out ActionScriptItemJPanel);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package;


