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

package org.allbinary.game.configuration.feature.InputFeature_Package is


   type InputFeature is tagged;
   type InputFeature_Access is access all InputFeature'Class;
   type InputFeature_Access_Array is array (Natural range <>) of InputFeature_Access;
   type InputFeature_Access_Array_Access is access all InputFeature_Access_Array;
   type InputFeature_Access_Array_Access_Array is array (Natural range <>) of InputFeature_Access_Array_Access;
   type InputFeature_Access_Array_Access_Array_Access is access all InputFeature_Access_Array_Access_Array;

   type InputFeature is new Feature with null record;

   procedure Initialize (This : in out InputFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return InputFeature_Access;

end org.allbinary.game.configuration.feature.InputFeature_Package;


