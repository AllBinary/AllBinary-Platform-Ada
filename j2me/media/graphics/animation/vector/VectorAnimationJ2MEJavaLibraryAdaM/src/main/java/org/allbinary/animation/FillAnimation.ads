--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.FillAnimation_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type FillAnimation is tagged;
   type FillAnimation_Access is access all FillAnimation'Class;
   type FillAnimation_Access_Array is array (Natural range <>) of FillAnimation_Access;
   type FillAnimation_Access_Array_Access is access all FillAnimation_Access_Array;

   type FillAnimation is new IndexedAnimation with record
      pixelBuffer : Integer_Array_Access;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out FillAnimation'Class; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior : AnimationBehavior_Access) return FillAnimation_Access;
   procedure setBasicColorP (This : in out FillAnimation; basicColor : BasicColor_Access);
   procedure changeBasicColor (This : in out FillAnimation; basicColor : BasicColor_Access);
   procedure setAlpha (This : in out FillAnimation; alpha : Integer);
   procedure setScale (This : in out FillAnimation; scaleX : Float; scaleY : Float);
   procedure setMaxScale (This : in out FillAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure updateModifiers (This : in out FillAnimation);
   procedure paint (This : in out FillAnimation; g : Graphics_Access);

end org.allbinary.animation.FillAnimation_Package;


