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
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;

package org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package is

   package GameConfiguration_Package renames Standard.org.allbinary.game.configuration.GameConfiguration_Package;

   type ChangedGameFeatureListener is tagged;
   type ChangedGameFeatureListener_Access is access all ChangedGameFeatureListener'Class;
   type ChangedGameFeatureListener_Access_Array is array (Natural range <>) of ChangedGameFeatureListener_Access;
   type ChangedGameFeatureListener_Access_Array_Access is access all ChangedGameFeatureListener_Access_Array;
   type ChangedGameFeatureListener_Access_Array_Access_Array is array (Natural range <>) of ChangedGameFeatureListener_Access_Array_Access;
   type ChangedGameFeatureListener_Access_Array_Access_Array_Access is access all ChangedGameFeatureListener_Access_Array_Access_Array;

   type ChangedGameFeatureListener is new BaseChangedGameFeatureListener with null record;
   gameFeatureListener : ChangedGameFeatureListener_Access;

   procedure Initialize (This : in out ChangedGameFeatureListener'Class);
   function Create return ChangedGameFeatureListener_Access;
   function getInstance return ChangedGameFeatureListener_Access;
   function isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) return Boolean;
   procedure isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class);

end org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;


