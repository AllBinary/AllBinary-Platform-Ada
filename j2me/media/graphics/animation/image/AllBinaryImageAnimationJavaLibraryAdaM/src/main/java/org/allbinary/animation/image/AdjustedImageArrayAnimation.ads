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
with org.allbinary.animation.image.ImageArrayAnimation_Package; use org.allbinary.animation.image.ImageArrayAnimation_Package;

package org.allbinary.animation.image.AdjustedImageArrayAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;

   type AdjustedImageArrayAnimation is tagged;
   type AdjustedImageArrayAnimation_Access is access all AdjustedImageArrayAnimation'Class;
   type AdjustedImageArrayAnimation_Access_Array is array (Natural range <>) of AdjustedImageArrayAnimation_Access;
   type AdjustedImageArrayAnimation_Access_Array_Access is access all AdjustedImageArrayAnimation_Access_Array;

   type AdjustedImageArrayAnimation is new ImageArrayAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedImageArrayAnimation'Class; imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageArrayAnimation_Access;
   procedure init (This : in out AdjustedImageArrayAnimation; dx : Integer; dy : Integer);
   procedure paintXY (This : in out AdjustedImageArrayAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure setDx (This : in out AdjustedImageArrayAnimation; dx : Integer);
   function getDx (This : in out AdjustedImageArrayAnimation) return Integer;
   procedure getDx (This : in out AdjustedImageArrayAnimation);
   procedure setDy (This : in out AdjustedImageArrayAnimation; dy : Integer);
   function getDy (This : in out AdjustedImageArrayAnimation) return Integer;
   procedure getDy (This : in out AdjustedImageArrayAnimation);

end org.allbinary.animation.image.AdjustedImageArrayAnimation_Package;


