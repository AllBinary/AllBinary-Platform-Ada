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
with org.allbinary.game.configuration.feature.InputFeature_Package; use org.allbinary.game.configuration.feature.InputFeature_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;

package org.allbinary.game.configuration.feature.InputFeatureFactory_Package is


   type InputFeatureFactory is tagged;
   type InputFeatureFactory_Access is access all InputFeatureFactory'Class;
   type InputFeatureFactory_Access_Array is array (Natural range <>) of InputFeatureFactory_Access;
   type InputFeatureFactory_Access_Array_Access is access all InputFeatureFactory_Access_Array;

   type InputFeatureFactory is new Java_Object with record
      REMOVE_DUPLICATE_KEY_PRESSES : InputFeature_Access;
      INPUT_MAPPING : InputFeature_Access;
      MULTI_KEY_PRESS : InputFeature_Access;
      SINGLE_KEY_REPEAT_PRESS : InputFeature_Access;
      SINGLE_KEY_PRESS : InputFeature_Access;
   end record;
   instance : InputFeatureFactory_Access;

   procedure Initialize (This : in out InputFeatureFactory'Class);
   function Create return InputFeatureFactory_Access;
   function getInstance return InputFeatureFactory_Access;
   function isSingleKeyProcessing (This : in out InputFeatureFactory) return Boolean;

end org.allbinary.game.configuration.feature.InputFeatureFactory_Package;


