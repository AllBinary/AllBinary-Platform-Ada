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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.ColorLessVectorAnimation_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;

   type ColorLessVectorAnimation is tagged;
   type ColorLessVectorAnimation_Access is access all ColorLessVectorAnimation'Class;
   type ColorLessVectorAnimation_Access_Array is array (Natural range <>) of ColorLessVectorAnimation_Access;
   type ColorLessVectorAnimation_Access_Array_Access is access all ColorLessVectorAnimation_Access_Array;

   type ColorLessVectorAnimation is new VectorAnimation with null record;

   procedure Initialize (This : in out ColorLessVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior : AnimationBehavior_Access);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return ColorLessVectorAnimation_Access;
   procedure paintXY (This : in out ColorLessVectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.ColorLessVectorAnimation_Package;


