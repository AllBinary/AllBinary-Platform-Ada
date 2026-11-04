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

limited with org.allbinary.animation.AdjustedVectorAnimation_Package;
package org.allbinary.animation.AdjustedVectorAnimation_Package_References is
   type AdjustedVectorAnimation_Access is access all org.allbinary.animation.AdjustedVectorAnimation_Package.AdjustedVectorAnimation'Class;
   type AdjustedVectorAnimation_Access_Array is array (Natural range <>) of AdjustedVectorAnimation_Access;
   type AdjustedVectorAnimation_Access_Array_Access is access all AdjustedVectorAnimation_Access_Array;
   type AdjustedVectorAnimation_Access_Array_Access_Array is array (Natural range <>) of AdjustedVectorAnimation_Access_Array_Access;
   type AdjustedVectorAnimation_Access_Array_Access_Array_Access is access all AdjustedVectorAnimation_Access_Array_Access_Array;
end org.allbinary.animation.AdjustedVectorAnimation_Package_References;

with org.allbinary.animation.AdjustedVectorAnimation_Package_References;
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
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.AdjustedVectorAnimation_Package is

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


   subtype AdjustedVectorAnimation_Access is org.allbinary.animation.AdjustedVectorAnimation_Package_References.AdjustedVectorAnimation_Access;
   function "=" (Left, Right : AdjustedVectorAnimation_Access) return Boolean renames org.allbinary.animation.AdjustedVectorAnimation_Package_References."=";
   subtype AdjustedVectorAnimation_Access_Array is org.allbinary.animation.AdjustedVectorAnimation_Package_References.AdjustedVectorAnimation_Access_Array;
   function "=" (Left, Right : AdjustedVectorAnimation_Access_Array) return Boolean renames org.allbinary.animation.AdjustedVectorAnimation_Package_References."=";
   subtype AdjustedVectorAnimation_Access_Array_Access is org.allbinary.animation.AdjustedVectorAnimation_Package_References.AdjustedVectorAnimation_Access_Array_Access;
   function "=" (Left, Right : AdjustedVectorAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.AdjustedVectorAnimation_Package_References."=";
   subtype AdjustedVectorAnimation_Access_Array_Access_Array is org.allbinary.animation.AdjustedVectorAnimation_Package_References.AdjustedVectorAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AdjustedVectorAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AdjustedVectorAnimation_Package_References."=";
   subtype AdjustedVectorAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.AdjustedVectorAnimation_Package_References.AdjustedVectorAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdjustedVectorAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AdjustedVectorAnimation_Package_References."=";

   type AdjustedVectorAnimation is new VectorAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedVectorAnimation_Access;
   procedure paintXY (This : in out AdjustedVectorAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.AdjustedVectorAnimation_Package;


