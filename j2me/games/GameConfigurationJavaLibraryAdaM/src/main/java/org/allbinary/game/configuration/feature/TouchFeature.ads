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

package org.allbinary.game.configuration.feature.TouchFeature_Package is


   type TouchFeature is tagged;
   type TouchFeature_Access is access all TouchFeature'Class;
   type TouchFeature_Access_Array is array (Natural range <>) of TouchFeature_Access;
   type TouchFeature_Access_Array_Access is access all TouchFeature_Access_Array;

   type TouchFeature is new Feature with null record;

   procedure Initialize (This : in out TouchFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TouchFeature_Access;

end org.allbinary.game.configuration.feature.TouchFeature_Package;


