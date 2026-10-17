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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.VectorAnimationInterface_Package; use org.allbinary.animation.VectorAnimationInterface_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.VectorBaseRotationAnimation_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type VectorBaseRotationAnimation is tagged;
   type VectorBaseRotationAnimation_Access is access all VectorBaseRotationAnimation'Class;
   type VectorBaseRotationAnimation_Access_Array is array (Natural range <>) of VectorBaseRotationAnimation_Access;
   type VectorBaseRotationAnimation_Access_Array_Access is access all VectorBaseRotationAnimation_Access_Array;

   type VectorBaseRotationAnimation is new RotationAnimation and VectorAnimationInterface with record
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
   end record;

   procedure Initialize (This : in out VectorBaseRotationAnimation'Class; angleInfo_Param : access AngleInfo'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehavior_Param : access AnimationBehavior'Class);
   function Create (angleInfo_Param : access AngleInfo'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehavior_Param : access AnimationBehavior'Class) return VectorBaseRotationAnimation_Access;
   function getAnimationSize (This : in out VectorBaseRotationAnimation) return Integer;
   function getFrame (This : in out VectorBaseRotationAnimation) return Integer;
   procedure setFrame (This : in out VectorBaseRotationAnimation; index : Integer);
   procedure nextFrame (This : in out VectorBaseRotationAnimation);
   procedure previousFrame (This : in out VectorBaseRotationAnimation);
   function getSize (This : in out VectorBaseRotationAnimation) return Integer;
   procedure setSequence (This : in out VectorBaseRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out VectorBaseRotationAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out VectorBaseRotationAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer);
   function getPoints (This : in out VectorBaseRotationAnimation; frame : Integer) return Integer_Array_Access_Array_Access;
   procedure getPoints (This : in out VectorBaseRotationAnimation; frame : Integer);
   procedure setPoints (This : in out VectorBaseRotationAnimation; currentPoints : Integer_Array_Access_Array_Access_Array_Access);

end org.allbinary.animation.VectorBaseRotationAnimation_Package;


