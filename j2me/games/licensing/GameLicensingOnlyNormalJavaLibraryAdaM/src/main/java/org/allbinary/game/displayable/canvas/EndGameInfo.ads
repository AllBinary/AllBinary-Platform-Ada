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

with AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.EndGameInfo_Package;
package org.allbinary.game.displayable.canvas.EndGameInfo_Package_References is
   type EndGameInfo_Access is access all org.allbinary.game.displayable.canvas.EndGameInfo_Package.EndGameInfo'Class;
   type EndGameInfo_Access_Array is array (Natural range <>) of EndGameInfo_Access;
   type EndGameInfo_Access_Array_Access is access all EndGameInfo_Access_Array;
   type EndGameInfo_Access_Array_Access_Array is array (Natural range <>) of EndGameInfo_Access_Array_Access;
   type EndGameInfo_Access_Array_Access_Array_Access is access all EndGameInfo_Access_Array_Access_Array;
   type EndGameInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EndGameInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : EndGameInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EndGameInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EndGameInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EndGameInfo_Access_Array_Access is (if Value /= null and then Value.all in EndGameInfo_Access_Array_Object'Class then EndGameInfo_Access_Array_Object'Class (Value.all).Value else null);
   type EndGameInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EndGameInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EndGameInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EndGameInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EndGameInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EndGameInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EndGameInfo_Access_Array_Access_Array_Object'Class then EndGameInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.EndGameInfo_Package_References;

with org.allbinary.game.displayable.canvas.EndGameInfo_Package_References;
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
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;

package org.allbinary.game.displayable.canvas.EndGameInfo_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
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
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype EndGameInfo_Access is org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.EndGameInfo_Access;
   function "=" (Left, Right : EndGameInfo_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References."=";
   subtype EndGameInfo_Access_Array is org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.EndGameInfo_Access_Array;
   function "=" (Left, Right : EndGameInfo_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References."=";
   subtype EndGameInfo_Access_Array_Access is org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.EndGameInfo_Access_Array_Access;
   function "=" (Left, Right : EndGameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References."=";
   function Java_Box (Value : EndGameInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.Java_Box;
   function Java_Unbox_EndGameInfo_Access_Array (Value : access Java_Object'Class) return EndGameInfo_Access_Array_Access renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.Java_Unbox_EndGameInfo_Access_Array;
   subtype EndGameInfo_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.EndGameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : EndGameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References."=";
   subtype EndGameInfo_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.EndGameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EndGameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References."=";
   function Java_Box (Value : EndGameInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.Java_Box;
   function Java_Unbox_EndGameInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return EndGameInfo_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.EndGameInfo_Package_References.Java_Unbox_EndGameInfo_Access_Array_Access_Array;

   type EndGameInfo is new Java_Object with record
      NORMAL_GAME_OVER : Unbounded_String;
      NORMAL_GAME_OVER_WIN : Unbounded_String;
      gameOverStr : Unbounded_String;
      winStr : Unbounded_String;
   end record;

   procedure Initialize (This : in out EndGameInfo'Class);
   function Create return EndGameInfo_Access;
   procedure update (This : in out EndGameInfo; gameInfo_Param : access GameInfo_Package.GameInfo'Class; myCanvas_Param : access MyCanvas_Package.MyCanvas'Class);
   function getGameOverStr (This : in out EndGameInfo) return Unbounded_String;
   procedure setGameOverStr (This : in out EndGameInfo; gameOverStr : Unbounded_String);
   function getWinStr (This : in out EndGameInfo) return Unbounded_String;
   procedure setWinStr (This : in out EndGameInfo; winStr : Unbounded_String);

end org.allbinary.game.displayable.canvas.EndGameInfo_Package;


