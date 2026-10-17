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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;

package org.allbinary.animation.image.AdjustedImageAnimation_Package is

   package AnimationBehavior_Package renames org.allbinary.animation.AnimationBehavior_Package;

   type AdjustedImageAnimation is tagged;
   type AdjustedImageAnimation_Access is access all AdjustedImageAnimation'Class;
   type AdjustedImageAnimation_Access_Array is array (Natural range <>) of AdjustedImageAnimation_Access;
   type AdjustedImageAnimation_Access_Array_Access is access all AdjustedImageAnimation_Access_Array;

   type AdjustedImageAnimation is new ImageAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedImageAnimation'Class; image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageAnimation_Access;
   procedure init (This : in out AdjustedImageAnimation; dx : Integer; dy : Integer);
   procedure paintXY (This : in out AdjustedImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure setDx (This : in out AdjustedImageAnimation; dx : Integer);
   function getDx (This : in out AdjustedImageAnimation) return Integer;
   procedure getDx (This : in out AdjustedImageAnimation);
   procedure setDy (This : in out AdjustedImageAnimation; dy : Integer);
   function getDy (This : in out AdjustedImageAnimation) return Integer;
   procedure getDy (This : in out AdjustedImageAnimation);

end org.allbinary.animation.image.AdjustedImageAnimation_Package;


