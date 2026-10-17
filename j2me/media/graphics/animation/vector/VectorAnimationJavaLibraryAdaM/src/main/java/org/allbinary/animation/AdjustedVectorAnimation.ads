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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;

package org.allbinary.animation.AdjustedVectorAnimation_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type AdjustedVectorAnimation is tagged;
   type AdjustedVectorAnimation_Access is access all AdjustedVectorAnimation'Class;
   type AdjustedVectorAnimation_Access_Array is array (Natural range <>) of AdjustedVectorAnimation_Access;
   type AdjustedVectorAnimation_Access_Array_Access is access all AdjustedVectorAnimation_Access_Array;

   type AdjustedVectorAnimation is new VectorAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedVectorAnimation_Access;
   procedure paintXY (This : in out AdjustedVectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.AdjustedVectorAnimation_Package;


