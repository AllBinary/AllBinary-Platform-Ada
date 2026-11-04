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

limited with org.allbinary.game.input.GameKeyUtil_Package;
package org.allbinary.game.input.GameKeyUtil_Package_References is
   type GameKeyUtil_Access is access all org.allbinary.game.input.GameKeyUtil_Package.GameKeyUtil'Class;
   type GameKeyUtil_Access_Array is array (Natural range <>) of GameKeyUtil_Access;
   type GameKeyUtil_Access_Array_Access is access all GameKeyUtil_Access_Array;
   type GameKeyUtil_Access_Array_Access_Array is array (Natural range <>) of GameKeyUtil_Access_Array_Access;
   type GameKeyUtil_Access_Array_Access_Array_Access is access all GameKeyUtil_Access_Array_Access_Array;
end org.allbinary.game.input.GameKeyUtil_Package_References;

with org.allbinary.game.input.GameKeyUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.input.GameKeyUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyUtil_Access is org.allbinary.game.input.GameKeyUtil_Package_References.GameKeyUtil_Access;
   function "=" (Left, Right : GameKeyUtil_Access) return Boolean renames org.allbinary.game.input.GameKeyUtil_Package_References."=";
   subtype GameKeyUtil_Access_Array is org.allbinary.game.input.GameKeyUtil_Package_References.GameKeyUtil_Access_Array;
   function "=" (Left, Right : GameKeyUtil_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyUtil_Package_References."=";
   subtype GameKeyUtil_Access_Array_Access is org.allbinary.game.input.GameKeyUtil_Package_References.GameKeyUtil_Access_Array_Access;
   function "=" (Left, Right : GameKeyUtil_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyUtil_Package_References."=";
   subtype GameKeyUtil_Access_Array_Access_Array is org.allbinary.game.input.GameKeyUtil_Package_References.GameKeyUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKeyUtil_Package_References."=";
   subtype GameKeyUtil_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyUtil_Package_References.GameKeyUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKeyUtil_Package_References."=";

   type GameKeyUtil is new Java_Object with null record;
   instance : GameKeyUtil_Access;

   procedure Initialize (This : in out GameKeyUtil'Class);
   function Create return GameKeyUtil_Access;
   function isDirectionKey (This : in out GameKeyUtil; key : Integer) return Boolean;
   procedure isDirectionKey (This : in out GameKeyUtil; key : Integer);
   function getInstance return GameKeyUtil_Access;

end org.allbinary.game.input.GameKeyUtil_Package;


