-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.animation.text.AdjustCustomTextAnimation_Package;
package org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References is
   type AdjustCustomTextAnimation_Access is access all org.allbinary.animation.text.AdjustCustomTextAnimation_Package.AdjustCustomTextAnimation'Class;
   type AdjustCustomTextAnimation_Access_Array is array (Natural range <>) of AdjustCustomTextAnimation_Access;
   type AdjustCustomTextAnimation_Access_Array_Access is access all AdjustCustomTextAnimation_Access_Array;
   type AdjustCustomTextAnimation_Access_Array_Access_Array is array (Natural range <>) of AdjustCustomTextAnimation_Access_Array_Access;
   type AdjustCustomTextAnimation_Access_Array_Access_Array_Access is access all AdjustCustomTextAnimation_Access_Array_Access_Array;
end org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References;

with org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References;
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
with org.allbinary.animation.text.CustomTextAnimation_Package; use org.allbinary.animation.text.CustomTextAnimation_Package;

package org.allbinary.animation.text.AdjustCustomTextAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
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


   subtype AdjustCustomTextAnimation_Access is org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References.AdjustCustomTextAnimation_Access;
   function "=" (Left, Right : AdjustCustomTextAnimation_Access) return Boolean renames org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References."=";
   subtype AdjustCustomTextAnimation_Access_Array is org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References.AdjustCustomTextAnimation_Access_Array;
   function "=" (Left, Right : AdjustCustomTextAnimation_Access_Array) return Boolean renames org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References."=";
   subtype AdjustCustomTextAnimation_Access_Array_Access is org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References.AdjustCustomTextAnimation_Access_Array_Access;
   function "=" (Left, Right : AdjustCustomTextAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References."=";
   subtype AdjustCustomTextAnimation_Access_Array_Access_Array is org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References.AdjustCustomTextAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AdjustCustomTextAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References."=";
   subtype AdjustCustomTextAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References.AdjustCustomTextAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdjustCustomTextAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.text.AdjustCustomTextAnimation_Package_References."=";

   type AdjustCustomTextAnimation is new CustomTextAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustCustomTextAnimation'Class; text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustCustomTextAnimation_Access;
   function getDx (This : in out AdjustCustomTextAnimation) return Integer;
   procedure setDx (This : in out AdjustCustomTextAnimation; dx : Integer);
   function getDy (This : in out AdjustCustomTextAnimation) return Integer;
   procedure setDy (This : in out AdjustCustomTextAnimation; dy : Integer);
   procedure paintXY (This : in out AdjustCustomTextAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.text.AdjustCustomTextAnimation_Package;


