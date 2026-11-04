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

limited with org.allbinary.animation.ColorLessVectorAnimation_Package;
package org.allbinary.animation.ColorLessVectorAnimation_Package_References is
   type ColorLessVectorAnimation_Access is access all org.allbinary.animation.ColorLessVectorAnimation_Package.ColorLessVectorAnimation'Class;
   type ColorLessVectorAnimation_Access_Array is array (Natural range <>) of ColorLessVectorAnimation_Access;
   type ColorLessVectorAnimation_Access_Array_Access is access all ColorLessVectorAnimation_Access_Array;
   type ColorLessVectorAnimation_Access_Array_Access_Array is array (Natural range <>) of ColorLessVectorAnimation_Access_Array_Access;
   type ColorLessVectorAnimation_Access_Array_Access_Array_Access is access all ColorLessVectorAnimation_Access_Array_Access_Array;
end org.allbinary.animation.ColorLessVectorAnimation_Package_References;

with org.allbinary.animation.ColorLessVectorAnimation_Package_References;
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
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.ColorLessVectorAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ColorLessVectorAnimation_Access is org.allbinary.animation.ColorLessVectorAnimation_Package_References.ColorLessVectorAnimation_Access;
   function "=" (Left, Right : ColorLessVectorAnimation_Access) return Boolean renames org.allbinary.animation.ColorLessVectorAnimation_Package_References."=";
   subtype ColorLessVectorAnimation_Access_Array is org.allbinary.animation.ColorLessVectorAnimation_Package_References.ColorLessVectorAnimation_Access_Array;
   function "=" (Left, Right : ColorLessVectorAnimation_Access_Array) return Boolean renames org.allbinary.animation.ColorLessVectorAnimation_Package_References."=";
   subtype ColorLessVectorAnimation_Access_Array_Access is org.allbinary.animation.ColorLessVectorAnimation_Package_References.ColorLessVectorAnimation_Access_Array_Access;
   function "=" (Left, Right : ColorLessVectorAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.ColorLessVectorAnimation_Package_References."=";
   subtype ColorLessVectorAnimation_Access_Array_Access_Array is org.allbinary.animation.ColorLessVectorAnimation_Package_References.ColorLessVectorAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : ColorLessVectorAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.ColorLessVectorAnimation_Package_References."=";
   subtype ColorLessVectorAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.ColorLessVectorAnimation_Package_References.ColorLessVectorAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorLessVectorAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.ColorLessVectorAnimation_Package_References."=";

   type ColorLessVectorAnimation is new VectorAnimation with null record;

   procedure Initialize (This : in out ColorLessVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ColorLessVectorAnimation_Access;
   procedure paintXY (This : in out ColorLessVectorAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.ColorLessVectorAnimation_Package;


