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
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.VectorAnimationInterface_Package; use org.allbinary.animation.VectorAnimationInterface_Package;

package org.allbinary.animation.VectorAnimation_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package PrimitiveIntUtil_Package renames org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package CircularIndexUtil_Package renames org.allbinary.util.CircularIndexUtil_Package;

   type VectorAnimation is tagged;
   type VectorAnimation_Access is access all VectorAnimation'Class;
   type VectorAnimation_Access_Array is array (Natural range <>) of VectorAnimation_Access;
   type VectorAnimation_Access_Array_Access is access all VectorAnimation_Access_Array;

   type VectorAnimation is new IndexedAnimation and VectorAnimationInterface with record
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
      circularIndexUtil : CircularIndexUtil_Access;
   end record;

   procedure Initialize (This : in out VectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) return VectorAnimation_Access;
   function createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access) return VectorAnimation_Access;
   procedure createVectorAnimation (currentPoints2 : Integer_Array_Access_Array_Access; basicColor : BasicColor_Access; animationBehavior : AnimationBehavior_Access);
   procedure setBasicColorP (This : in out VectorAnimation; basicColor : BasicColor_Access);
   procedure changeBasicColor (This : in out VectorAnimation; basicColor : BasicColor_Access);
   procedure setAlpha (This : in out VectorAnimation; alpha : Integer);
   procedure setScale (This : in out VectorAnimation; scaleX : Float; scaleY : Float);
   procedure setMaxScale (This : in out VectorAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure updateModifiers (This : in out VectorAnimation);
   function getAnimationSize (This : in out VectorAnimation) return Integer;
   procedure getAnimationSize (This : in out VectorAnimation);
   function getSize (This : in out VectorAnimation) return Integer;
   procedure getSize (This : in out VectorAnimation);
   procedure setSequence (This : in out VectorAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out VectorAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out VectorAnimation);
   procedure nextFrame (This : in out VectorAnimation);
   procedure previousFrame (This : in out VectorAnimation);
   procedure paintVectors (This : in out VectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paintXY (This : in out VectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   function getFrame (This : in out VectorAnimation) return Integer;
   procedure getFrame (This : in out VectorAnimation);
   procedure setFrame (This : in out VectorAnimation; index : Integer);
   function getPoints (This : in out VectorAnimation; frame : Integer) return Integer_Array_Access_Array_Access;
   procedure getPoints (This : in out VectorAnimation; frame : Integer);
   procedure setPoints (This : in out VectorAnimation; currentPoints : Integer_Array_Access_Array_Access_Array_Access);

end org.allbinary.animation.VectorAnimation_Package;


