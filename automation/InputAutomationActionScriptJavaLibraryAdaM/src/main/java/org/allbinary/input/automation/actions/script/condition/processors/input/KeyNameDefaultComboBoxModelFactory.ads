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
--  with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
with org.allbinary.input.KeySingletonFactory_Package; use org.allbinary.input.KeySingletonFactory_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package is

   package KeySingletonFactory_Package renames Standard.org.allbinary.input.KeySingletonFactory_Package;

   type KeyNameDefaultComboBoxModelFactory is tagged;
   type KeyNameDefaultComboBoxModelFactory_Access is access all KeyNameDefaultComboBoxModelFactory'Class;
   type KeyNameDefaultComboBoxModelFactory_Access_Array is array (Natural range <>) of KeyNameDefaultComboBoxModelFactory_Access;
   type KeyNameDefaultComboBoxModelFactory_Access_Array_Access is access all KeyNameDefaultComboBoxModelFactory_Access_Array;

   type KeyNameDefaultComboBoxModelFactory is new Java_Object with null record;

   procedure Initialize (This : in out KeyNameDefaultComboBoxModelFactory'Class);
   function Create return KeyNameDefaultComboBoxModelFactory_Access;
   function getInstance return DefaultComboBoxModel_Access;
   procedure getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package;


