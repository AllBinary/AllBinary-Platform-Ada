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

limited with org.allbinary.animation.text.TextAnimation_Package;
package org.allbinary.animation.text.TextAnimation_Package_References is
   type TextAnimation_Access is access all org.allbinary.animation.text.TextAnimation_Package.TextAnimation'Class;
   type TextAnimation_Access_Array is array (Natural range <>) of TextAnimation_Access;
   type TextAnimation_Access_Array_Access is access all TextAnimation_Access_Array;
   type TextAnimation_Access_Array_Access_Array is array (Natural range <>) of TextAnimation_Access_Array_Access;
   type TextAnimation_Access_Array_Access_Array_Access is access all TextAnimation_Access_Array_Access_Array;
end org.allbinary.animation.text.TextAnimation_Package_References;

with org.allbinary.animation.text.TextAnimation_Package_References;
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
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.animation.text.TextChangeListener_Package_References;

package org.allbinary.animation.text.TextAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
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
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
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
   subtype TextChangeListener_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access;
   use type TextChangeListener_Access;
   subtype TextChangeListener_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array;
   use type TextChangeListener_Access_Array;
   subtype TextChangeListener_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access;
   use type TextChangeListener_Access_Array_Access;
   subtype TextChangeListener_Access_Array_Access_Array is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array;
   use type TextChangeListener_Access_Array_Access_Array;
   subtype TextChangeListener_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextChangeListener_Package_References.TextChangeListener_Access_Array_Access_Array_Access;
   use type TextChangeListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TextAnimation_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access;
   function "=" (Left, Right : TextAnimation_Access) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array;
   function "=" (Left, Right : TextAnimation_Access_Array) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access;
   function "=" (Left, Right : TextAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array_Access_Array is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : TextAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";
   subtype TextAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TextAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.TextAnimation_Package_References."=";

   type TextAnimation is new IndexedAnimation and UpdateMyFontInterface with record
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      textArrayP : Unbounded_String_Array_Access;
      anchor : Integer;
      fontHeight : Integer;
      offsetY : Integer;
      textChangeListener : TextChangeListener_Access;
   end record;

   procedure Initialize (This : in out TextAnimation'Class; text : Unbounded_String; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (text : Unbounded_String; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TextAnimation_Access;
   procedure updateMeasurement (This : in out TextAnimation; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure nextFrame (This : in out TextAnimation);
   procedure paintXY (This : in out TextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintXYNoUpdate (This : in out TextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure setTextWithOnMeasure (This : in out TextAnimation; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class);
   procedure setText (This : in out TextAnimation; text : Unbounded_String);
   function getTextArray (This : in out TextAnimation) return Unbounded_String_Array_Access;
   function getFontHeight (This : in out TextAnimation) return Integer;

end org.allbinary.animation.text.TextAnimation_Package;


