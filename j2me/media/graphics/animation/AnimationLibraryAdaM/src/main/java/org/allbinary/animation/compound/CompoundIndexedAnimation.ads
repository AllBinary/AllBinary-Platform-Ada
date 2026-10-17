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
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.compound.CompoundAnimationInterface_Package; use org.allbinary.animation.compound.CompoundAnimationInterface_Package;

package org.allbinary.animation.compound.CompoundIndexedAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type CompoundIndexedAnimation is tagged;
   type CompoundIndexedAnimation_Access is access all CompoundIndexedAnimation'Class;
   type CompoundIndexedAnimation_Access_Array is array (Natural range <>) of CompoundIndexedAnimation_Access;
   type CompoundIndexedAnimation_Access_Array_Access is access all CompoundIndexedAnimation_Access_Array;

   type CompoundIndexedAnimation is new IndexedAnimation and CompoundAnimationInterface with record
      circularIndexUtil : CircularIndexUtil_Access;
      animationInterfaceArray : Animation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out CompoundIndexedAnimation'Class; animationInterfaceArray : Animation_Access_Array_Access; animationBehavior : AnimationBehavior_Access);
   function Create (animationInterfaceArray : Animation_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return CompoundIndexedAnimation_Access;
   procedure setFrame (This : in out CompoundIndexedAnimation; index : Integer);
   function getFrame (This : in out CompoundIndexedAnimation) return Integer;
   procedure getFrame (This : in out CompoundIndexedAnimation);
   function getSize (This : in out CompoundIndexedAnimation) return Integer;
   procedure getSize (This : in out CompoundIndexedAnimation);
   procedure previousFrame (This : in out CompoundIndexedAnimation);
   procedure setSequence (This : in out CompoundIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out CompoundIndexedAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out CompoundIndexedAnimation);
   procedure nextFrame (This : in out CompoundIndexedAnimation);
   procedure paintXY (This : in out CompoundIndexedAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CompoundIndexedAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer);
   function getCurrentAnimation (This : in out CompoundIndexedAnimation) return IndexedAnimation_Access;
   procedure getCurrentAnimation (This : in out CompoundIndexedAnimation);
   procedure nextAnimation (This : in out CompoundIndexedAnimation);
   procedure previousAnimation (This : in out CompoundIndexedAnimation);
   procedure setAnimation (This : in out CompoundIndexedAnimation; index : Integer);
   function getAnimationInterfaceArray (This : in out CompoundIndexedAnimation) return Animation_Access_Array_Access;
   procedure getAnimationInterfaceArray (This : in out CompoundIndexedAnimation);
   procedure setAnimationInterfaceArray (This : in out CompoundIndexedAnimation; animationInterfaceArray : Animation_Access_Array_Access);
   procedure set (This : in out CompoundIndexedAnimation; gl : GL_Access);

end org.allbinary.animation.compound.CompoundIndexedAnimation_Package;


