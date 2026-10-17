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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.animation.caption.CaptionAnimationHelperBase_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type CaptionAnimationHelperBase is tagged;
   type CaptionAnimationHelperBase_Access is access all CaptionAnimationHelperBase'Class;
   type CaptionAnimationHelperBase_Access_Array is array (Natural range <>) of CaptionAnimationHelperBase_Access;
   type CaptionAnimationHelperBase_Access_Array_Access is access all CaptionAnimationHelperBase_Access_Array;

   type CaptionAnimationHelperBase is new Animation with null record;
   INSTANCE : CaptionAnimationHelperBase_Access;

   procedure Initialize (This : in out CaptionAnimationHelperBase'Class);
   function Create return CaptionAnimationHelperBase_Access;
   function isShowing (This : in out CaptionAnimationHelperBase) return Boolean;
   procedure isShowing (This : in out CaptionAnimationHelperBase);
   procedure tick (This : in out CaptionAnimationHelperBase);
   procedure update (This : in out CaptionAnimationHelperBase; message : Unbounded_String; basicColor : BasicColor_Access);
   procedure paintXY (This : in out CaptionAnimationHelperBase; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;


