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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.animation.special.SpecialAnimation_Package; use org.allbinary.animation.special.SpecialAnimation_Package;

package org.allbinary.animation.special.TitleAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package IndexedAnimationBehavior_Package renames Standard.org.allbinary.animation.IndexedAnimationBehavior_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;

   type TitleAnimation is tagged;
   type TitleAnimation_Access is access all TitleAnimation'Class;
   type TitleAnimation_Access_Array is array (Natural range <>) of TitleAnimation_Access;
   type TitleAnimation_Access_Array_Access is access all TitleAnimation_Access_Array;

   type TitleAnimation is new SpecialAnimation with record
      systemWrapper : ABSystemWrapper_Access;
      deltaX : Float;
      deltaY : Float;
      deltaZ : Float;
      basicColorArray : BasicColor_Access_Array_Access;
      dxArray : Integer_Array_Access;
      dyArray : Integer_Array_Access;
      widthP : Integer;
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
      sizeP : Integer;
      y : Integer;
      lastFrameStartTime : Long_Long_Integer;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      CLEAR_COLOR : BasicColor_Access;
   end record;

   procedure Initialize (This : in out TitleAnimation'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TitleAnimation_Access;
   function createAnimation (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer) return TitleAnimation_Access;
   procedure createAnimation (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer);
   procedure nextFrame (This : in out TitleAnimation);
   function isComplete (This : in out TitleAnimation) return Boolean;
   procedure setSequence (This : in out TitleAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out TitleAnimation) return Integer_Array_Access;
   function getSize (This : in out TitleAnimation) return Integer;
   function getFrame (This : in out TitleAnimation) return Integer;
   procedure setFrame (This : in out TitleAnimation; frame : Integer);
   procedure setLastFrame (This : in out TitleAnimation);
   procedure reset (This : in out TitleAnimation);
   procedure previousFrame (This : in out TitleAnimation);
   procedure paintFrameXY (This : in out TitleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer);
   procedure paintXY (This : in out TitleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; ax : Integer; ay : Integer);

end org.allbinary.animation.special.TitleAnimation_Package;


