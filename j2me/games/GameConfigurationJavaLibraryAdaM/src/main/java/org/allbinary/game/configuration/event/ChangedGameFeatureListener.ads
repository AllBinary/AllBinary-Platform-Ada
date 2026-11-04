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

limited with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
package org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References is
   type ChangedGameFeatureListener_Access is access all org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package.ChangedGameFeatureListener'Class;
   type ChangedGameFeatureListener_Access_Array is array (Natural range <>) of ChangedGameFeatureListener_Access;
   type ChangedGameFeatureListener_Access_Array_Access is access all ChangedGameFeatureListener_Access_Array;
   type ChangedGameFeatureListener_Access_Array_Access_Array is array (Natural range <>) of ChangedGameFeatureListener_Access_Array_Access;
   type ChangedGameFeatureListener_Access_Array_Access_Array_Access is access all ChangedGameFeatureListener_Access_Array_Access_Array;
end org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References;

with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;
with org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;

package org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package is

   package GameConfiguration_Package renames Standard.org.allbinary.game.configuration.GameConfiguration_Package;
   package Reference_Types is
   subtype GameConfiguration_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access;
   use type GameConfiguration_Access;
   subtype GameConfiguration_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array;
   use type GameConfiguration_Access_Array;
   subtype GameConfiguration_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access;
   use type GameConfiguration_Access_Array_Access;
   subtype GameConfiguration_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array;
   use type GameConfiguration_Access_Array_Access_Array;
   subtype GameConfiguration_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array_Access;
   use type GameConfiguration_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ChangedGameFeatureListener_Access is org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References.ChangedGameFeatureListener_Access;
   function "=" (Left, Right : ChangedGameFeatureListener_Access) return Boolean renames org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References."=";
   subtype ChangedGameFeatureListener_Access_Array is org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References.ChangedGameFeatureListener_Access_Array;
   function "=" (Left, Right : ChangedGameFeatureListener_Access_Array) return Boolean renames org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References."=";
   subtype ChangedGameFeatureListener_Access_Array_Access is org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References.ChangedGameFeatureListener_Access_Array_Access;
   function "=" (Left, Right : ChangedGameFeatureListener_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References."=";
   subtype ChangedGameFeatureListener_Access_Array_Access_Array is org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References.ChangedGameFeatureListener_Access_Array_Access_Array;
   function "=" (Left, Right : ChangedGameFeatureListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References."=";
   subtype ChangedGameFeatureListener_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References.ChangedGameFeatureListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChangedGameFeatureListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package_References."=";

   type ChangedGameFeatureListener is new BaseChangedGameFeatureListener with null record;
   gameFeatureListener : ChangedGameFeatureListener_Access;

   procedure Initialize (This : in out ChangedGameFeatureListener'Class);
   function Create return ChangedGameFeatureListener_Access;
   function getInstance return ChangedGameFeatureListener_Access;
   function isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) return Boolean;
   procedure isChangedGameConfiguration (This : in out ChangedGameFeatureListener; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class);

end org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;


