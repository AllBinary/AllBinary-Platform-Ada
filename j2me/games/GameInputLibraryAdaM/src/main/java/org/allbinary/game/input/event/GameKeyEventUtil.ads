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

limited with org.allbinary.game.input.event.GameKeyEventUtil_Package;
package org.allbinary.game.input.event.GameKeyEventUtil_Package_References is
   type GameKeyEventUtil_Access is access all org.allbinary.game.input.event.GameKeyEventUtil_Package.GameKeyEventUtil'Class;
   type GameKeyEventUtil_Access_Array is array (Natural range <>) of GameKeyEventUtil_Access;
   type GameKeyEventUtil_Access_Array_Access is access all GameKeyEventUtil_Access_Array;
   type GameKeyEventUtil_Access_Array_Access_Array is array (Natural range <>) of GameKeyEventUtil_Access_Array_Access;
   type GameKeyEventUtil_Access_Array_Access_Array_Access is access all GameKeyEventUtil_Access_Array_Access_Array;
end org.allbinary.game.input.event.GameKeyEventUtil_Package_References;

with org.allbinary.game.input.event.GameKeyEventUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.input.event.GameKeyEventUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyEventUtil_Access is org.allbinary.game.input.event.GameKeyEventUtil_Package_References.GameKeyEventUtil_Access;
   function "=" (Left, Right : GameKeyEventUtil_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventUtil_Package_References."=";
   subtype GameKeyEventUtil_Access_Array is org.allbinary.game.input.event.GameKeyEventUtil_Package_References.GameKeyEventUtil_Access_Array;
   function "=" (Left, Right : GameKeyEventUtil_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventUtil_Package_References."=";
   subtype GameKeyEventUtil_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventUtil_Package_References.GameKeyEventUtil_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventUtil_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventUtil_Package_References."=";
   subtype GameKeyEventUtil_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventUtil_Package_References.GameKeyEventUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventUtil_Package_References."=";
   subtype GameKeyEventUtil_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventUtil_Package_References.GameKeyEventUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventUtil_Package_References."=";

   type GameKeyEventUtil is new Java_Object with null record;

   procedure Initialize (This : in out GameKeyEventUtil'Class);
   function Create return GameKeyEventUtil_Access;
   function getKey (anyType_Param : access Java_Object'Class) return Integer;
   procedure getKey (anyType_Param : access Java_Object'Class);
   function getKey (Value : Unbounded_String) return Integer;
   procedure getKey (Value : Unbounded_String);

end org.allbinary.game.input.event.GameKeyEventUtil_Package;


