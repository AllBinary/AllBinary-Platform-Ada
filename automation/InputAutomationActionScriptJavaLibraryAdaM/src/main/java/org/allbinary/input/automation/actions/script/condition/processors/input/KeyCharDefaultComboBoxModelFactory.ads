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
with abbot.tester.KeyStrokeMap_Package; use abbot.tester.KeyStrokeMap_Package;
with org.allbinary.input.KeySingletonFactory_Package; use org.allbinary.input.KeySingletonFactory_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package is

   package KeyStrokeMap_Package renames abbot.tester.KeyStrokeMap_Package;
   package KeySingletonFactory_Package renames org.allbinary.input.KeySingletonFactory_Package;

   type KeyCharDefaultComboBoxModelFactory is tagged;
   type KeyCharDefaultComboBoxModelFactory_Access is access all KeyCharDefaultComboBoxModelFactory'Class;
   type KeyCharDefaultComboBoxModelFactory_Access_Array is array (Natural range <>) of KeyCharDefaultComboBoxModelFactory_Access;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access is access all KeyCharDefaultComboBoxModelFactory_Access_Array;

   type KeyCharDefaultComboBoxModelFactory is new Java_Object with null record;

   procedure Initialize (This : in out KeyCharDefaultComboBoxModelFactory'Class);
   function Create return KeyCharDefaultComboBoxModelFactory_Access;
   function getInstance return DefaultComboBoxModel_Access;
   procedure getInstance;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;


