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
with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.configuration.feature.Feature_Package is

   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type Feature is tagged;
   type Feature_Access is access all Feature'Class;
   type Feature_Access_Array is array (Natural range <>) of Feature_Access;
   type Feature_Access_Array_Access is access all Feature_Access_Array;

   type Feature is new Java_Object with record
      name : Unbounded_String;
   end record;
   hashtable : ABHashtable_Access;

   procedure Initialize (This : in out Feature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return Feature_Access;
   function getInstance (name : Unbounded_String) return Feature_Access;
   procedure getInstance (name : Unbounded_String);
   procedure add (name : Unbounded_String; gameFeature_Param : access Feature'Class);
   function toString (This : in out Feature) return Unbounded_String;
   function getName (This : in out Feature) return Unbounded_String;

end org.allbinary.game.configuration.feature.Feature_Package;


