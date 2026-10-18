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
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;

package org.allbinary.game.configuration.feature.GameFeature_Package is


   type GameFeature is tagged;
   type GameFeature_Access is access all GameFeature'Class;
   type GameFeature_Access_Array is array (Natural range <>) of GameFeature_Access;
   type GameFeature_Access_Array_Access is access all GameFeature_Access_Array;
   type GameFeature_Access_Array_Access_Array is array (Natural range <>) of GameFeature_Access_Array_Access;
   type GameFeature_Access_Array_Access_Array_Access is access all GameFeature_Access_Array_Access_Array;

   type GameFeature is new Feature_Package.Feature with null record;

   procedure Initialize (This : in out GameFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return GameFeature_Access;

end org.allbinary.game.configuration.feature.GameFeature_Package;


