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
with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEventHandler_Package; use org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.game.configuration.GameConfiguration_Package is

   package GameFeatureEvent_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEvent_Package;
   package GameFeatureEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type GameConfiguration is tagged;
   type GameConfiguration_Access is access all GameConfiguration'Class;
   type GameConfiguration_Access_Array is array (Natural range <>) of GameConfiguration_Access;
   type GameConfiguration_Access_Array_Access is access all GameConfiguration_Access_Array;

   type GameConfiguration is new Java_Object with record
      name : Unbounded_String;
      defaultValue : Integer;
      value : Integer;
      minValue : Integer;
      maxValue : Integer;
      modifiable : Boolean;
   end record;
   MIN_VALUE : Integer;

   procedure Initialize (This : in out GameConfiguration'Class; name : Unbounded_String; defaultValue : Integer; minValue : Integer; maxValue : Integer);
   function Create (name : Unbounded_String; defaultValue : Integer; minValue : Integer; maxValue : Integer) return GameConfiguration_Access;
   procedure setValue (This : in out GameConfiguration; value : Integer);
   function getValue (This : in out GameConfiguration) return Integer;
   procedure getValue (This : in out GameConfiguration);
   procedure setMaxValue (This : in out GameConfiguration; maxValue : Integer);
   function getMaxValue (This : in out GameConfiguration) return Integer;
   procedure getMaxValue (This : in out GameConfiguration);
   procedure setMinValue (This : in out GameConfiguration; minValue : Integer);
   function getMinValue (This : in out GameConfiguration) return Integer;
   procedure getMinValue (This : in out GameConfiguration);
   procedure setName (This : in out GameConfiguration; name : Unbounded_String);
   function getName (This : in out GameConfiguration) return Unbounded_String;
   procedure getName (This : in out GameConfiguration);
   procedure setDefaultValue (This : in out GameConfiguration; defaultValue : Integer);
   function getDefaultValue (This : in out GameConfiguration) return Integer;
   procedure getDefaultValue (This : in out GameConfiguration);
   procedure setDefault (This : in out GameConfiguration);
   function toString (This : in out GameConfiguration) return Unbounded_String;
   procedure toString (This : in out GameConfiguration);
   procedure setModifiable (This : in out GameConfiguration; modifiable : Boolean);
   function isModifiable (This : in out GameConfiguration) return Boolean;
   procedure isModifiable (This : in out GameConfiguration);

end org.allbinary.game.configuration.GameConfiguration_Package;


