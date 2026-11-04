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

limited with org.allbinary.game.displayable.canvas.GameRunnable_Package;
package org.allbinary.game.displayable.canvas.GameRunnable_Package_References is
   type GameRunnable_Access is access all org.allbinary.game.displayable.canvas.GameRunnable_Package.GameRunnable'Class;
   type GameRunnable_Access_Array is array (Natural range <>) of GameRunnable_Access;
   type GameRunnable_Access_Array_Access is access all GameRunnable_Access_Array;
   type GameRunnable_Access_Array_Access_Array is array (Natural range <>) of GameRunnable_Access_Array_Access;
   type GameRunnable_Access_Array_Access_Array_Access is access all GameRunnable_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.GameRunnable_Package_References;

with org.allbinary.game.displayable.canvas.GameRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.game.displayable.canvas.GameRunnable_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameRunnable_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access;
   function "=" (Left, Right : GameRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array;
   function "=" (Left, Right : GameRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access;
   function "=" (Left, Right : GameRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : GameRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";

   type GameRunnable is new Java_Object and Runnable with record
      WAIT : Integer;
      FAST : Integer;
      waitInMillis : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out GameRunnable'Class);
   function Create return GameRunnable_Access;
   procedure run (This : in out GameRunnable);
   procedure processLoopSleep (This : in out GameRunnable);

end org.allbinary.game.displayable.canvas.GameRunnable_Package;


