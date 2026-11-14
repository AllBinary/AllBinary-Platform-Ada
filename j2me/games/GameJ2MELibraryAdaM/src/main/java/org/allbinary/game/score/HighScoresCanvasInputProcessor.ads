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
limited with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
package org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References is
   type HighScoresCanvasInputProcessor_Access is access all org.allbinary.game.score.HighScoresCanvasInputProcessor_Package.HighScoresCanvasInputProcessor'Class;
   type HighScoresCanvasInputProcessor_Access_Array is array (Natural range <>) of HighScoresCanvasInputProcessor_Access;
   type HighScoresCanvasInputProcessor_Access_Array_Access is access all HighScoresCanvasInputProcessor_Access_Array;
   type HighScoresCanvasInputProcessor_Access_Array_Access_Array is array (Natural range <>) of HighScoresCanvasInputProcessor_Access_Array_Access;
   type HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access is access all HighScoresCanvasInputProcessor_Access_Array_Access_Array;
   type HighScoresCanvasInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasInputProcessor_Access_Array_Object'Class then HighScoresCanvasInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoresCanvasInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasInputProcessor_Access_Array_Access_Array_Object'Class then HighScoresCanvasInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References;

with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package_References;

package org.allbinary.game.score.HighScoresCanvasInputProcessor_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   subtype HighScoresCanvas_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access;
   use type HighScoresCanvas_Access;
   subtype HighScoresCanvas_Access_Array is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array;
   use type HighScoresCanvas_Access_Array;
   subtype HighScoresCanvas_Access_Array_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access;
   use type HighScoresCanvas_Access_Array_Access;
   subtype HighScoresCanvas_Access_Array_Access_Array is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access_Array;
   use type HighScoresCanvas_Access_Array_Access_Array;
   subtype HighScoresCanvas_Access_Array_Access_Array_Access is org.allbinary.game.score.displayable.HighScoresCanvas_Package_References.HighScoresCanvas_Access_Array_Access_Array_Access;
   use type HighScoresCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HighScoresCanvasInputProcessor_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   function Java_Box (Value : HighScoresCanvasInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasInputProcessor_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasInputProcessor_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.Java_Unbox_HighScoresCanvasInputProcessor_Access_Array;
   subtype HighScoresCanvasInputProcessor_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   subtype HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References."=";
   function Java_Box (Value : HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasInputProcessor_Package_References.Java_Unbox_HighScoresCanvasInputProcessor_Access_Array_Access_Array;

   type HighScoresCanvasInputProcessor is new PlayerGameInput with record
      highScoresCanvas : HighScoresCanvas_Access;
   end record;

   procedure Initialize (This : in out HighScoresCanvasInputProcessor'Class; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class);
   function Create (highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasInputProcessor_Access;
   procedure open (This : in out HighScoresCanvasInputProcessor);
   procedure close (This : in out HighScoresCanvasInputProcessor);
   procedure onPressGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onDownGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onUpGameKeyEvent (This : in out HighScoresCanvasInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure paint (This : in out HighScoresCanvasInputProcessor; graphics_Param : access Graphics_Package.Graphics'Class);
   function getHighScoresCanvas (This : in out HighScoresCanvasInputProcessor) return HighScoresCanvas_Access;

end org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;


