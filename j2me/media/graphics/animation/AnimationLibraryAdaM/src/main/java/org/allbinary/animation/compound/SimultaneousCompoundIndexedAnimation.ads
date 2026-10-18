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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;

package org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;

   type SimultaneousCompoundIndexedAnimation is tagged;
   type SimultaneousCompoundIndexedAnimation_Access is access all SimultaneousCompoundIndexedAnimation'Class;
   type SimultaneousCompoundIndexedAnimation_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexedAnimation_Access;
   type SimultaneousCompoundIndexedAnimation_Access_Array_Access is access all SimultaneousCompoundIndexedAnimation_Access_Array;
   type SimultaneousCompoundIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexedAnimation_Access_Array_Access;
   type SimultaneousCompoundIndexedAnimation_Access_Array_Access_Array_Access is access all SimultaneousCompoundIndexedAnimation_Access_Array_Access_Array;

   type SimultaneousCompoundIndexedAnimation is new IndexedAnimation with record
      animationInterfaceArray : Animation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out SimultaneousCompoundIndexedAnimation'Class; animationInterfaceArray : Animation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : Animation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SimultaneousCompoundIndexedAnimation_Access;
   procedure setFrame (This : in out SimultaneousCompoundIndexedAnimation; frameIndex : Integer);
   function getFrame (This : in out SimultaneousCompoundIndexedAnimation) return Integer;
   function getSize (This : in out SimultaneousCompoundIndexedAnimation) return Integer;
   procedure previousFrame (This : in out SimultaneousCompoundIndexedAnimation);
   procedure setSequence (This : in out SimultaneousCompoundIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out SimultaneousCompoundIndexedAnimation) return Integer_Array_Access;
   procedure nextFrame (This : in out SimultaneousCompoundIndexedAnimation);
   procedure paintXY (This : in out SimultaneousCompoundIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out SimultaneousCompoundIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function getAnimationInterfaceArray (This : in out SimultaneousCompoundIndexedAnimation) return Animation_Access_Array_Access;
   procedure setAnimationInterfaceArray (This : in out SimultaneousCompoundIndexedAnimation; animationInterfaceArray : Animation_Access_Array_Access);

end org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimation_Package;


