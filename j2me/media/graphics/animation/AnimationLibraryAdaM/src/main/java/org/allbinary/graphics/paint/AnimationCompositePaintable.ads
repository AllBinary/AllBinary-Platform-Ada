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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;

package org.allbinary.graphics.paint.AnimationCompositePaintable_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;

   type AnimationCompositePaintable is tagged;
   type AnimationCompositePaintable_Access is access all AnimationCompositePaintable'Class;
   type AnimationCompositePaintable_Access_Array is array (Natural range <>) of AnimationCompositePaintable_Access;
   type AnimationCompositePaintable_Access_Array_Access is access all AnimationCompositePaintable_Access_Array;

   type AnimationCompositePaintable is new InitUpdatePaintable with record
      animationInterface : Animation_Access;
   end record;

   procedure Initialize (This : in out AnimationCompositePaintable'Class; animationInterface : Animation_Access);
   function Create (animationInterface : Animation_Access) return AnimationCompositePaintable_Access;
   procedure paint (This : in out AnimationCompositePaintable; graphics : Graphics_Access);
   procedure paintThreed (This : in out AnimationCompositePaintable; graphics : Graphics_Access);

end org.allbinary.graphics.paint.AnimationCompositePaintable_Package;


