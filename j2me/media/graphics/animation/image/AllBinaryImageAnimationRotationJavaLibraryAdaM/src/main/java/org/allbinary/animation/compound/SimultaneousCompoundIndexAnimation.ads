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
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;

package org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;

   type SimultaneousCompoundIndexAnimation is tagged;
   type SimultaneousCompoundIndexAnimation_Access is access all SimultaneousCompoundIndexAnimation'Class;
   type SimultaneousCompoundIndexAnimation_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexAnimation_Access;
   type SimultaneousCompoundIndexAnimation_Access_Array_Access is access all SimultaneousCompoundIndexAnimation_Access_Array;

   type SimultaneousCompoundIndexAnimation is new IndexedAnimation with record
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out SimultaneousCompoundIndexAnimation'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; animationBehavior : AnimationBehavior_Access);
   function Create (animationInterfaceArray : IndexedAnimation_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return SimultaneousCompoundIndexAnimation_Access;
   procedure setFrame (This : in out SimultaneousCompoundIndexAnimation; frameIndex : Integer);
   function getFrame (This : in out SimultaneousCompoundIndexAnimation) return Integer;
   procedure getFrame (This : in out SimultaneousCompoundIndexAnimation);
   function getAnimationSize (This : in out SimultaneousCompoundIndexAnimation) return Integer;
   procedure getAnimationSize (This : in out SimultaneousCompoundIndexAnimation);
   function getSize (This : in out SimultaneousCompoundIndexAnimation) return Integer;
   procedure getSize (This : in out SimultaneousCompoundIndexAnimation);
   procedure previousFrame (This : in out SimultaneousCompoundIndexAnimation);
   procedure nextFrame (This : in out SimultaneousCompoundIndexAnimation);
   procedure setSequence (This : in out SimultaneousCompoundIndexAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out SimultaneousCompoundIndexAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out SimultaneousCompoundIndexAnimation);
   procedure paintXY (This : in out SimultaneousCompoundIndexAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out SimultaneousCompoundIndexAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer);
   procedure set (This : in out SimultaneousCompoundIndexAnimation; gl : GL_Access);
   function getAnimationInterfaceArray (This : in out SimultaneousCompoundIndexAnimation) return IndexedAnimation_Access_Array_Access;
   procedure getAnimationInterfaceArray (This : in out SimultaneousCompoundIndexAnimation);
   procedure setAnimationInterfaceArray (This : in out SimultaneousCompoundIndexAnimation; animationInterfaceArray : IndexedAnimation_Access_Array_Access);

end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package;


