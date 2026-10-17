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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.configuration.GameConfigurationSingleton_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type GameConfigurationSingleton is tagged;
   type GameConfigurationSingleton_Access is access all GameConfigurationSingleton'Class;
   type GameConfigurationSingleton_Access_Array is array (Natural range <>) of GameConfigurationSingleton_Access;
   type GameConfigurationSingleton_Access_Array_Access is access all GameConfigurationSingleton_Access_Array;

   type GameConfigurationSingleton is new Java_Object with record
      list : BasicArrayList_Access;
      hashtable : ABHashtable_Access;
   end record;
   SINGLETON : GameConfigurationSingleton_Access;

   procedure Initialize (This : in out GameConfigurationSingleton'Class);
   function Create return GameConfigurationSingleton_Access;
   function getInstance return GameConfigurationSingleton_Access;
   procedure getInstance;
   function getInstanceByName (This : in out GameConfigurationSingleton; name : Unbounded_String) return GameConfiguration_Access;
   procedure getInstanceByName (This : in out GameConfigurationSingleton; name : Unbounded_String);
   function getOptionsBasicArrayList (This : in out GameConfigurationSingleton) return BasicArrayList_Access;
   procedure getOptionsBasicArrayList (This : in out GameConfigurationSingleton);
   procedure add (This : in out GameConfigurationSingleton; gameConfiguration : GameConfiguration_Access);
   function getHashtable (This : in out GameConfigurationSingleton) return ABHashtable_Access;
   procedure getHashtable (This : in out GameConfigurationSingleton);

end org.allbinary.game.configuration.GameConfigurationSingleton_Package;


