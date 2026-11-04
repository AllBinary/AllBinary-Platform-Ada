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

limited with org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package;
package org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References is
   type StartIntermissionPaintable_Access is access all org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package.StartIntermissionPaintable'Class;
   type StartIntermissionPaintable_Access_Array is array (Natural range <>) of StartIntermissionPaintable_Access;
   type StartIntermissionPaintable_Access_Array_Access is access all StartIntermissionPaintable_Access_Array;
   type StartIntermissionPaintable_Access_Array_Access_Array is array (Natural range <>) of StartIntermissionPaintable_Access_Array_Access;
   type StartIntermissionPaintable_Access_Array_Access_Array_Access is access all StartIntermissionPaintable_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References;

with org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
limited with org.allbinary.graphics.font.FontDebugFactory_Package;
with org.allbinary.graphics.font.FontDebugFactory_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package FontDebugFactory_Package renames Standard.org.allbinary.graphics.font.FontDebugFactory_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
   package Reference_Types is
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   use type BasicColorSetUtil_Access;
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   use type BasicColorSetUtil_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access;
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   use type BasicColorSetUtil_Access_Array_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access_Array_Access;
   subtype FontDebugFactory_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access;
   use type FontDebugFactory_Access;
   subtype FontDebugFactory_Access_Array is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array;
   use type FontDebugFactory_Access_Array;
   subtype FontDebugFactory_Access_Array_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access;
   use type FontDebugFactory_Access_Array_Access;
   subtype FontDebugFactory_Access_Array_Access_Array is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access_Array;
   use type FontDebugFactory_Access_Array_Access_Array;
   subtype FontDebugFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.font.FontDebugFactory_Package_References.FontDebugFactory_Access_Array_Access_Array_Access;
   use type FontDebugFactory_Access_Array_Access_Array_Access;
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
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StartIntermissionPaintable_Access is org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References.StartIntermissionPaintable_Access;
   function "=" (Left, Right : StartIntermissionPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References."=";
   subtype StartIntermissionPaintable_Access_Array is org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References.StartIntermissionPaintable_Access_Array;
   function "=" (Left, Right : StartIntermissionPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References."=";
   subtype StartIntermissionPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References.StartIntermissionPaintable_Access_Array_Access;
   function "=" (Left, Right : StartIntermissionPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References."=";
   subtype StartIntermissionPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References.StartIntermissionPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : StartIntermissionPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References."=";
   subtype StartIntermissionPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References.StartIntermissionPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StartIntermissionPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package_References."=";

   type StartIntermissionPaintable is new InitUpdatePaintable and UpdateMyFontInterface with record
      fontDebugFactory : FontDebugFactory_Access;
      basicSetColorUtil : BasicColorSetUtil_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      stringArray : Unbounded_String_Array_Access;
      fontSize : Integer;
      font : Font_Access;
      lastWidth : Integer_Array_Access;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      basicColor : BasicColor_Access;
      color : Integer;
      lineYOffsetArray : Integer_Array_Access;
      hasChanged : Boolean;
      anchor : Integer;
      fontHeightP : Integer;
      BEGIN_LEVEL : Unbounded_String;
      EMPTY_STRING : Unbounded_String;
   end record;

   procedure Initialize (This : in out StartIntermissionPaintable'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; stringArray : Unbounded_String_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; font_Param : access Font_Package.Font'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; stringArray : Unbounded_String_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; font_Param : access Font_Package.Font'Class) return StartIntermissionPaintable_Access;
   procedure updateMeasurement (This : in out StartIntermissionPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out StartIntermissionPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out StartIntermissionPaintable);
   procedure setBasicColorP (This : in out StartIntermissionPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out StartIntermissionPaintable) return BasicColor_Access;

end org.allbinary.game.displayable.canvas.StartIntermissionPaintable_Package;


