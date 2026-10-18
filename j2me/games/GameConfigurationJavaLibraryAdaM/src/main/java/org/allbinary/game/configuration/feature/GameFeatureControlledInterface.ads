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

package org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package is


   type GameFeatureControlledInterface is interface;
   type GameFeatureControlledInterface_Access is access all GameFeatureControlledInterface'Class;
   type GameFeatureControlledInterface_Access_Array is array (Natural range <>) of GameFeatureControlledInterface_Access;
   type GameFeatureControlledInterface_Access_Array_Access is access all GameFeatureControlledInterface_Access_Array;
   type GameFeatureControlledInterface_Access_Array_Access_Array is array (Natural range <>) of GameFeatureControlledInterface_Access_Array_Access;
   type GameFeatureControlledInterface_Access_Array_Access_Array_Access is access all GameFeatureControlledInterface_Access_Array_Access_Array;
   procedure init (This : in out GameFeatureControlledInterface; level : Integer) is abstract;
   function isFeature (This : in out GameFeatureControlledInterface) return Boolean is abstract;
   function isLoadingLevel (This : in out GameFeatureControlledInterface; level : Integer) return Boolean is abstract;

end org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;


