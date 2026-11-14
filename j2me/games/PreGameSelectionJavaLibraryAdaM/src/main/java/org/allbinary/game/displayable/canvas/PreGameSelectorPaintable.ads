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
limited with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
package org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References is
   type PreGameSelectorPaintable_Access is access all org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class;
   type PreGameSelectorPaintable_Access_Array is array (Natural range <>) of PreGameSelectorPaintable_Access;
   type PreGameSelectorPaintable_Access_Array_Access is access all PreGameSelectorPaintable_Access_Array;
   type PreGameSelectorPaintable_Access_Array_Access_Array is array (Natural range <>) of PreGameSelectorPaintable_Access_Array_Access;
   type PreGameSelectorPaintable_Access_Array_Access_Array_Access is access all PreGameSelectorPaintable_Access_Array_Access_Array;
   type PreGameSelectorPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameSelectorPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameSelectorPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameSelectorPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameSelectorPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameSelectorPaintable_Access_Array_Access is (if Value /= null and then Value.all in PreGameSelectorPaintable_Access_Array_Object'Class then PreGameSelectorPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type PreGameSelectorPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PreGameSelectorPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PreGameSelectorPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PreGameSelectorPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PreGameSelectorPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PreGameSelectorPaintable_Access_Array_Access_Array_Object'Class then PreGameSelectorPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;

with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;
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
limited with org.allbinary.graphics.draw.CanvasDrawLineString_Package;
with org.allbinary.graphics.draw.CanvasDrawLineString_Package_References;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
limited with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package;
with org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References;

package org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package CanvasDrawLineString_Package renames Standard.org.allbinary.graphics.draw.CanvasDrawLineString_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
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
   subtype CanvasDrawLineString_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access;
   use type CanvasDrawLineString_Access;
   subtype CanvasDrawLineString_Access_Array is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array;
   use type CanvasDrawLineString_Access_Array;
   subtype CanvasDrawLineString_Access_Array_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access;
   use type CanvasDrawLineString_Access_Array_Access;
   subtype CanvasDrawLineString_Access_Array_Access_Array is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access_Array;
   use type CanvasDrawLineString_Access_Array_Access_Array;
   subtype CanvasDrawLineString_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.CanvasDrawLineString_Package_References.CanvasDrawLineString_Access_Array_Access_Array_Access;
   use type CanvasDrawLineString_Access_Array_Access_Array_Access;
   subtype PreGameScrollSelectionForm_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access;
   use type PreGameScrollSelectionForm_Access;
   subtype PreGameScrollSelectionForm_Access_Array is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array;
   use type PreGameScrollSelectionForm_Access_Array;
   subtype PreGameScrollSelectionForm_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access;
   use type PreGameScrollSelectionForm_Access_Array_Access;
   subtype PreGameScrollSelectionForm_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access_Array;
   use type PreGameScrollSelectionForm_Access_Array_Access_Array;
   subtype PreGameScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameScrollSelectionForm_Package_References.PreGameScrollSelectionForm_Access_Array_Access_Array_Access;
   use type PreGameScrollSelectionForm_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PreGameSelectorPaintable_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   function Java_Box (Value : PreGameSelectorPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.Java_Box;
   function Java_Unbox_PreGameSelectorPaintable_Access_Array (Value : access Java_Object'Class) return PreGameSelectorPaintable_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.Java_Unbox_PreGameSelectorPaintable_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   subtype PreGameSelectorPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectorPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References."=";
   function Java_Box (Value : PreGameSelectorPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.Java_Box;
   function Java_Unbox_PreGameSelectorPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return PreGameSelectorPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.Java_Unbox_PreGameSelectorPaintable_Access_Array_Access_Array;

   type PreGameSelectorPaintable is new InitUpdatePaintable with record
      title : Unbounded_String;
      canvasDrawLineString : CanvasDrawLineString_Access;
      preGameScrollSelectionForm : PreGameScrollSelectionForm_Access;
   end record;

   procedure Initialize (This : in out PreGameSelectorPaintable'Class; title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class);
   function Create (title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class) return PreGameSelectorPaintable_Access;
   procedure update (This : in out PreGameSelectorPaintable);
   procedure paint (This : in out PreGameSelectorPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   function getPreGameSelectionForm (This : in out PreGameSelectorPaintable) return PreGameScrollSelectionForm_Access;

end org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;


