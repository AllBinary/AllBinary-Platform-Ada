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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.text.CustomTextAnimation_Package; use org.allbinary.animation.text.CustomTextAnimation_Package;

package org.allbinary.animation.text.AdjustCustomTextAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;

   type AdjustCustomTextAnimation is tagged;
   type AdjustCustomTextAnimation_Access is access all AdjustCustomTextAnimation'Class;
   type AdjustCustomTextAnimation_Access_Array is array (Natural range <>) of AdjustCustomTextAnimation_Access;
   type AdjustCustomTextAnimation_Access_Array_Access is access all AdjustCustomTextAnimation_Access_Array;

   type AdjustCustomTextAnimation is new CustomTextAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustCustomTextAnimation'Class; text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustCustomTextAnimation_Access;
   function getDx (This : in out AdjustCustomTextAnimation) return Integer;
   procedure setDx (This : in out AdjustCustomTextAnimation; dx : Integer);
   function getDy (This : in out AdjustCustomTextAnimation) return Integer;
   procedure setDy (This : in out AdjustCustomTextAnimation; dy : Integer);
   procedure paintXY (This : in out AdjustCustomTextAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.text.AdjustCustomTextAnimation_Package;


