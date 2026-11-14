-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.layer.SelectionHudPaintable_Package;
package org.allbinary.game.layer.SelectionHudPaintable_Package_References is
   type SelectionHudPaintable_Access is access all org.allbinary.game.layer.SelectionHudPaintable_Package.SelectionHudPaintable'Class;
   type SelectionHudPaintable_Access_Array is array (Natural range <>) of SelectionHudPaintable_Access;
   type SelectionHudPaintable_Access_Array_Access is access all SelectionHudPaintable_Access_Array;
   type SelectionHudPaintable_Access_Array_Access_Array is array (Natural range <>) of SelectionHudPaintable_Access_Array_Access;
   type SelectionHudPaintable_Access_Array_Access_Array_Access is access all SelectionHudPaintable_Access_Array_Access_Array;
   type SelectionHudPaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectionHudPaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectionHudPaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectionHudPaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectionHudPaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectionHudPaintable_Access_Array_Access is (if Value /= null and then Value.all in SelectionHudPaintable_Access_Array_Object'Class then SelectionHudPaintable_Access_Array_Object'Class (Value.all).Value else null);
   type SelectionHudPaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectionHudPaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectionHudPaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectionHudPaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectionHudPaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectionHudPaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectionHudPaintable_Access_Array_Access_Array_Object'Class then SelectionHudPaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.SelectionHudPaintable_Package_References;

with org.allbinary.game.layer.SelectionHudPaintable_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;

package org.allbinary.game.layer.SelectionHudPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
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
   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   use type PrimitiveLongUtil_Access;
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   use type PrimitiveLongUtil_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access;
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   use type PrimitiveLongUtil_Access_Array_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SelectionHudPaintable_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   function Java_Box (Value : SelectionHudPaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.SelectionHudPaintable_Package_References.Java_Box;
   function Java_Unbox_SelectionHudPaintable_Access_Array (Value : access Java_Object'Class) return SelectionHudPaintable_Access_Array_Access renames org.allbinary.game.layer.SelectionHudPaintable_Package_References.Java_Unbox_SelectionHudPaintable_Access_Array;
   subtype SelectionHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   subtype SelectionHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectionHudPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SelectionHudPaintable_Package_References."=";
   function Java_Box (Value : SelectionHudPaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.SelectionHudPaintable_Package_References.Java_Box;
   function Java_Unbox_SelectionHudPaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectionHudPaintable_Access_Array_Access_Array_Access renames org.allbinary.game.layer.SelectionHudPaintable_Package_References.Java_Unbox_SelectionHudPaintable_Access_Array_Access_Array;

   type SelectionHudPaintable is new InitUpdatePaintable and UpdateMyFontInterface with record
      y : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      x : Integer;
      textX : Integer;
      imageX : Integer;
      basicColor : BasicColor_Access;
      color : Integer;
      width : Integer;
      height : Integer;
      name : Unbounded_String;
      animationInterface : Animation_Access;
      backgroundColor : Integer;
   end record;

   procedure Initialize (This : in out SelectionHudPaintable'Class);
   function Create return SelectionHudPaintable_Access;
   procedure updateMeasurement (This : in out SelectionHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out SelectionHudPaintable);
   procedure updateSelectionInfo (This : in out SelectionHudPaintable);
   procedure updateInfo (This : in out SelectionHudPaintable);
   function getPrimitiveLongUtil (This : in out SelectionHudPaintable) return PrimitiveLongUtil_Access;
   procedure setAnimationInterface (This : in out SelectionHudPaintable; animationInterface_Param : access Animation_Package.Animation'Class);
   function getAnimationInterface (This : in out SelectionHudPaintable) return Animation_Access;
   procedure setName (This : in out SelectionHudPaintable; name : Unbounded_String);
   function getName (This : in out SelectionHudPaintable) return Unbounded_String;
   procedure setBasicColorP (This : in out SelectionHudPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out SelectionHudPaintable) return BasicColor_Access;
   procedure setColor (This : in out SelectionHudPaintable; color : Integer);
   function getColor (This : in out SelectionHudPaintable) return Integer;
   function getWidth (This : in out SelectionHudPaintable) return Integer;
   procedure setHeight (This : in out SelectionHudPaintable; height : Integer);
   function getHeight (This : in out SelectionHudPaintable) return Integer;
   function getX (This : in out SelectionHudPaintable) return Integer;
   procedure paint (This : in out SelectionHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.SelectionHudPaintable_Package;


