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
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.JPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.JPanel_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.ActionScriptItemJPanel_Package is


   type ActionScriptItemJPanel is tagged;
   type ActionScriptItemJPanel_Access is access all ActionScriptItemJPanel'Class;
   type ActionScriptItemJPanel_Access_Array is array (Natural range <>) of ActionScriptItemJPanel_Access;
   type ActionScriptItemJPanel_Access_Array_Access is access all ActionScriptItemJPanel_Access_Array;
   type ActionScriptItemJPanel_Access_Array_Access_Array is array (Natural range <>) of ActionScriptItemJPanel_Access_Array_Access;
   type ActionScriptItemJPanel_Access_Array_Access_Array_Access is access all ActionScriptItemJPanel_Access_Array_Access_Array;

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


