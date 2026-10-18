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

package org.allbinary.game.configuration.feature.MainFeatureFactory_Package is


   type MainFeatureFactory is tagged;
   type MainFeatureFactory_Access is access all MainFeatureFactory'Class;
   type MainFeatureFactory_Access_Array is array (Natural range <>) of MainFeatureFactory_Access;
   type MainFeatureFactory_Access_Array_Access is access all MainFeatureFactory_Access_Array;
   type MainFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of MainFeatureFactory_Access_Array_Access;
   type MainFeatureFactory_Access_Array_Access_Array_Access is access all MainFeatureFactory_Access_Array_Access_Array;

   type MainFeatureFactory is new Java_Object with record
      FULL_SCREEN : Feature_Access;
      TITLE_BAR : Feature_Access;
      STATIC : Feature_Access;
      LOAD_ONDEMAND : Feature_Access;
      LOAD_ALL : Feature_Access;
   end record;
   instance : MainFeatureFactory_Access;

   procedure Initialize (This : in out MainFeatureFactory'Class);
   function Create return MainFeatureFactory_Access;
   function getInstance return MainFeatureFactory_Access;

end org.allbinary.game.configuration.feature.MainFeatureFactory_Package;


