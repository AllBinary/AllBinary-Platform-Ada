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
--  with javax.microedition.lcdui.TextField_Package; use javax.microedition.lcdui.TextField_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.configuration.GameConfigurationTextInput_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type GameConfigurationTextInput is tagged;
   type GameConfigurationTextInput_Access is access all GameConfigurationTextInput'Class;
   type GameConfigurationTextInput_Access_Array is array (Natural range <>) of GameConfigurationTextInput_Access;
   type GameConfigurationTextInput_Access_Array_Access is access all GameConfigurationTextInput_Access_Array;

   type GameConfigurationTextInput is new Java_Object with record
      label : Unbounded_String;
      text : Unbounded_String;
   end record;
   hashtable : ABHashtable_Access;
   SIMULATOR_IP : GameConfigurationTextInput_Access;
   SIMULATOR_PORT : GameConfigurationTextInput_Access;

   procedure Initialize (This : in out GameConfigurationTextInput'Class; label : Unbounded_String; text : Unbounded_String);
   function Create (label : Unbounded_String; text : Unbounded_String) return GameConfigurationTextInput_Access;
   procedure update (textField : TextField_Access);
   procedure setText (This : in out GameConfigurationTextInput; text : Unbounded_String);
   function getText (This : in out GameConfigurationTextInput) return Unbounded_String;
   procedure getText (This : in out GameConfigurationTextInput);
   procedure setLabel (This : in out GameConfigurationTextInput; label : Unbounded_String);
   function getLabel (This : in out GameConfigurationTextInput) return Unbounded_String;
   procedure getLabel (This : in out GameConfigurationTextInput);
   function getHashtable return ABHashtable_Access;
   procedure getHashtable;

end org.allbinary.game.configuration.GameConfigurationTextInput_Package;


