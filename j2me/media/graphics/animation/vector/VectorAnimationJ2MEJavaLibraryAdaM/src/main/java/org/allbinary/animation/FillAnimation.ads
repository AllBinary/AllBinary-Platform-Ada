--  Generated Code Do Not Modify

limited with org.allbinary.animation.FillAnimation_Package;
package org.allbinary.animation.FillAnimation_Package_References is
   type FillAnimation_Access is access all org.allbinary.animation.FillAnimation_Package.FillAnimation'Class;
   type FillAnimation_Access_Array is array (Natural range <>) of FillAnimation_Access;
   type FillAnimation_Access_Array_Access is access all FillAnimation_Access_Array;
   type FillAnimation_Access_Array_Access_Array is array (Natural range <>) of FillAnimation_Access_Array_Access;
   type FillAnimation_Access_Array_Access_Array_Access is access all FillAnimation_Access_Array_Access_Array;
end org.allbinary.animation.FillAnimation_Package_References;

with org.allbinary.animation.FillAnimation_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.FillAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype FillAnimation_Access is org.allbinary.animation.FillAnimation_Package_References.FillAnimation_Access;
   function "=" (Left, Right : FillAnimation_Access) return Boolean renames org.allbinary.animation.FillAnimation_Package_References."=";
   subtype FillAnimation_Access_Array is org.allbinary.animation.FillAnimation_Package_References.FillAnimation_Access_Array;
   function "=" (Left, Right : FillAnimation_Access_Array) return Boolean renames org.allbinary.animation.FillAnimation_Package_References."=";
   subtype FillAnimation_Access_Array_Access is org.allbinary.animation.FillAnimation_Package_References.FillAnimation_Access_Array_Access;
   function "=" (Left, Right : FillAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.FillAnimation_Package_References."=";
   subtype FillAnimation_Access_Array_Access_Array is org.allbinary.animation.FillAnimation_Package_References.FillAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : FillAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.FillAnimation_Package_References."=";
   subtype FillAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.FillAnimation_Package_References.FillAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FillAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.FillAnimation_Package_References."=";

   type FillAnimation is new IndexedAnimation with record
      pixelBuffer : Integer_Array_Access;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out FillAnimation'Class; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (pixelBuffer : Integer_Array_Access; width : Integer; height : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return FillAnimation_Access;
   procedure setBasicColorP (This : in out FillAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure changeBasicColor (This : in out FillAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setAlpha (This : in out FillAnimation; alpha : Integer);
   procedure setScale (This : in out FillAnimation; scaleX : Float; scaleY : Float);
   procedure setMaxScale (This : in out FillAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure updateModifiers (This : in out FillAnimation);
   procedure paint (This : in out FillAnimation; g_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.animation.FillAnimation_Package;


