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

limited with org.allbinary.game.GameInfoCopyFactory_Package;
package org.allbinary.game.GameInfoCopyFactory_Package_References is
   type GameInfoCopyFactory_Access is access all org.allbinary.game.GameInfoCopyFactory_Package.GameInfoCopyFactory'Class;
   type GameInfoCopyFactory_Access_Array is array (Natural range <>) of GameInfoCopyFactory_Access;
   type GameInfoCopyFactory_Access_Array_Access is access all GameInfoCopyFactory_Access_Array;
   type GameInfoCopyFactory_Access_Array_Access_Array is array (Natural range <>) of GameInfoCopyFactory_Access_Array_Access;
   type GameInfoCopyFactory_Access_Array_Access_Array_Access is access all GameInfoCopyFactory_Access_Array_Access_Array;
end org.allbinary.game.GameInfoCopyFactory_Package_References;

with org.allbinary.game.GameInfoCopyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;

package org.allbinary.game.GameInfoCopyFactory_Package is

   package Reference_Types is
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   use type GameInfo_Access;
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   use type GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   use type GameInfo_Access_Array_Access;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   use type GameInfo_Access_Array_Access_Array;
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   use type GameInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInfoCopyFactory_Access is org.allbinary.game.GameInfoCopyFactory_Package_References.GameInfoCopyFactory_Access;
   function "=" (Left, Right : GameInfoCopyFactory_Access) return Boolean renames org.allbinary.game.GameInfoCopyFactory_Package_References."=";
   subtype GameInfoCopyFactory_Access_Array is org.allbinary.game.GameInfoCopyFactory_Package_References.GameInfoCopyFactory_Access_Array;
   function "=" (Left, Right : GameInfoCopyFactory_Access_Array) return Boolean renames org.allbinary.game.GameInfoCopyFactory_Package_References."=";
   subtype GameInfoCopyFactory_Access_Array_Access is org.allbinary.game.GameInfoCopyFactory_Package_References.GameInfoCopyFactory_Access_Array_Access;
   function "=" (Left, Right : GameInfoCopyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoCopyFactory_Package_References."=";
   subtype GameInfoCopyFactory_Access_Array_Access_Array is org.allbinary.game.GameInfoCopyFactory_Package_References.GameInfoCopyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfoCopyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfoCopyFactory_Package_References."=";
   subtype GameInfoCopyFactory_Access_Array_Access_Array_Access is org.allbinary.game.GameInfoCopyFactory_Package_References.GameInfoCopyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfoCopyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfoCopyFactory_Package_References."=";

   type GameInfoCopyFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameInfoCopyFactory'Class);
   function Create return GameInfoCopyFactory_Access;
   function getInstanceMaxLevel (gameInfo_Param : access GameInfo_Package.GameInfo'Class; maxLevel : Integer) return GameInfo_Access;
   procedure getInstanceMaxLevel (gameInfo_Param : access GameInfo_Package.GameInfo'Class; maxLevel : Integer);
   function getInstance (gameInfo_Param : access GameInfo_Package.GameInfo'Class) return GameInfo_Access;
   procedure getInstance (gameInfo_Param : access GameInfo_Package.GameInfo'Class);

end org.allbinary.game.GameInfoCopyFactory_Package;


