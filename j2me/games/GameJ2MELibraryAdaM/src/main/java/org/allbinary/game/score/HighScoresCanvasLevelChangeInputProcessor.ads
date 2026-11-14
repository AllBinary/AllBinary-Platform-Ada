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
limited with org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package;
package org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References is
   type HighScoresCanvasLevelChangeInputProcessor_Access is access all org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package.HighScoresCanvasLevelChangeInputProcessor'Class;
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array is array (Natural range <>) of HighScoresCanvasLevelChangeInputProcessor_Access;
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access is access all HighScoresCanvasLevelChangeInputProcessor_Access_Array;
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array is array (Natural range <>) of HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access;
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access is access all HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array;
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasLevelChangeInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasLevelChangeInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasLevelChangeInputProcessor_Access_Array_Object'Class then HighScoresCanvasLevelChangeInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Object'Class then HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References;

with org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References;
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
limited with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;

package org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HighScoresCanvasLevelChangeInputProcessor_Access is org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.HighScoresCanvasLevelChangeInputProcessor_Access;
   function "=" (Left, Right : HighScoresCanvasLevelChangeInputProcessor_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References."=";
   subtype HighScoresCanvasLevelChangeInputProcessor_Access_Array is org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.HighScoresCanvasLevelChangeInputProcessor_Access_Array;
   function "=" (Left, Right : HighScoresCanvasLevelChangeInputProcessor_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References."=";
   subtype HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References."=";
   function Java_Box (Value : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasLevelChangeInputProcessor_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.Java_Unbox_HighScoresCanvasLevelChangeInputProcessor_Access_Array;
   subtype HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array is org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References."=";
   subtype HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References."=";
   function Java_Box (Value : HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.Java_Box;
   function Java_Unbox_HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package_References.Java_Unbox_HighScoresCanvasLevelChangeInputProcessor_Access_Array_Access_Array;

   type HighScoresCanvasLevelChangeInputProcessor is new HighScoresCanvasInputProcessor and UpdateMyFontInterface with record
      displayInfoSingleton : DisplayInfoSingleton_Access;
      INSTRUCTIONS : Unbounded_String;
      myFontProcessor : MyFontProcessor_Access;
      anchor : Integer;
      fontHeight : Integer;
   end record;

   procedure Initialize (This : in out HighScoresCanvasLevelChangeInputProcessor'Class; highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class);
   function Create (highScoresCanvas_Param : access HighScoresCanvas_Package.HighScoresCanvas'Class) return HighScoresCanvasLevelChangeInputProcessor_Access;
   procedure updateMeasurement (This : in out HighScoresCanvasLevelChangeInputProcessor; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure open (This : in out HighScoresCanvasLevelChangeInputProcessor);
   procedure close (This : in out HighScoresCanvasLevelChangeInputProcessor);
   procedure update (This : in out HighScoresCanvasLevelChangeInputProcessor);
   procedure paint (This : in out HighScoresCanvasLevelChangeInputProcessor; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package;


