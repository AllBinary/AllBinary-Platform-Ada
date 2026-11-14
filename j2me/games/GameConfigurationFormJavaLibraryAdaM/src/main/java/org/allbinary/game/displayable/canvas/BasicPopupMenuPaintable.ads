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
limited with org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package;
package org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References is
   type BasicPopupMenuPaintable_Access is access all org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package.BasicPopupMenuPaintable'Class;
   type BasicPopupMenuPaintable_Access_Array is array (Natural range <>) of BasicPopupMenuPaintable_Access;
   type BasicPopupMenuPaintable_Access_Array_Access is access all BasicPopupMenuPaintable_Access_Array;
   type BasicPopupMenuPaintable_Access_Array_Access_Array is array (Natural range <>) of BasicPopupMenuPaintable_Access_Array_Access;
   type BasicPopupMenuPaintable_Access_Array_Access_Array_Access is access all BasicPopupMenuPaintable_Access_Array_Access_Array;
   type BasicPopupMenuPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicPopupMenuPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicPopupMenuPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicPopupMenuPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicPopupMenuPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicPopupMenuPaintable_Access_Array_Access is (if Value /= null and then Value.all in BasicPopupMenuPaintable_Access_Array_Object'Class then BasicPopupMenuPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type BasicPopupMenuPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicPopupMenuPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicPopupMenuPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicPopupMenuPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicPopupMenuPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicPopupMenuPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicPopupMenuPaintable_Access_Array_Access_Array_Object'Class then BasicPopupMenuPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References;

with org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
limited with org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;
with org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package DrawVerticalStringUtil_Package renames Standard.org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
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
   subtype DrawVerticalStringUtil_Access is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access;
   use type DrawVerticalStringUtil_Access;
   subtype DrawVerticalStringUtil_Access_Array is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array;
   use type DrawVerticalStringUtil_Access_Array;
   subtype DrawVerticalStringUtil_Access_Array_Access is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array_Access;
   use type DrawVerticalStringUtil_Access_Array_Access;
   subtype DrawVerticalStringUtil_Access_Array_Access_Array is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array_Access_Array;
   use type DrawVerticalStringUtil_Access_Array_Access_Array;
   subtype DrawVerticalStringUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array_Access_Array_Access;
   use type DrawVerticalStringUtil_Access_Array_Access_Array_Access;
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


   subtype BasicPopupMenuPaintable_Access is org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.BasicPopupMenuPaintable_Access;
   function "=" (Left, Right : BasicPopupMenuPaintable_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References."=";
   subtype BasicPopupMenuPaintable_Access_Array is org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.BasicPopupMenuPaintable_Access_Array;
   function "=" (Left, Right : BasicPopupMenuPaintable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References."=";
   subtype BasicPopupMenuPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.BasicPopupMenuPaintable_Access_Array_Access;
   function "=" (Left, Right : BasicPopupMenuPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References."=";
   function Java_Box (Value : BasicPopupMenuPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.Java_Box;
   function Java_Unbox_BasicPopupMenuPaintable_Access_Array (Value : access Java_Object'Class) return BasicPopupMenuPaintable_Access_Array_Access renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.Java_Unbox_BasicPopupMenuPaintable_Access_Array;
   subtype BasicPopupMenuPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.BasicPopupMenuPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPopupMenuPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References."=";
   subtype BasicPopupMenuPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.BasicPopupMenuPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPopupMenuPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References."=";
   function Java_Box (Value : BasicPopupMenuPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.Java_Box;
   function Java_Unbox_BasicPopupMenuPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicPopupMenuPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package_References.Java_Unbox_BasicPopupMenuPaintable_Access_Array_Access_Array;

   type BasicPopupMenuPaintable is new Paintable and UpdateMyFontInterface with record
      basicSetColorUtil : BasicColorSetUtil_Access;
      drawStringUtil : DrawVerticalStringUtil_Access;
      label : Unbounded_String;
      foregroundBasicColor : BasicColor_Access;
      myFontProcessor : MyFontProcessor_Access;
      rectangle : Rectangle_Access;
      BORDER : Integer;
      heightOffset : Integer;
      offset : Integer;
      animationInterface : Animation_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out BasicPopupMenuPaintable'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return BasicPopupMenuPaintable_Access;
   procedure updateMeasurement (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure init (This : in out BasicPopupMenuPaintable; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   procedure paint (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package;


