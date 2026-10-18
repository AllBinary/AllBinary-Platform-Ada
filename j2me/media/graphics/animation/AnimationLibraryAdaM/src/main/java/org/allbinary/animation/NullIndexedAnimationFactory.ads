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
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.NullIndexedAnimation_Package; use org.allbinary.animation.NullIndexedAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.NullIndexedAnimationFactory_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type NullIndexedAnimationFactory is tagged;
   type NullIndexedAnimationFactory_Access is access all NullIndexedAnimationFactory'Class;
   type NullIndexedAnimationFactory_Access_Array is array (Natural range <>) of NullIndexedAnimationFactory_Access;
   type NullIndexedAnimationFactory_Access_Array_Access is access all NullIndexedAnimationFactory_Access_Array;
   type NullIndexedAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of NullIndexedAnimationFactory_Access_Array_Access;
   type NullIndexedAnimationFactory_Access_Array_Access_Array_Access is access all NullIndexedAnimationFactory_Access_Array_Access_Array;

   type NullIndexedAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      NULL_ANIMATION : Animation_Access;
   end record;
   NULL_INDEXED_ANIMATION_ARRAY : IndexedAnimation_Access_Array_Access;
   NULL_INDEXED_ANIMATION_FACTORY : NullIndexedAnimationFactory_Access;

   procedure Initialize (This : in out NullIndexedAnimationFactory'Class);
   function Create return NullIndexedAnimationFactory_Access;
   function getFactoryInstance return NullIndexedAnimationFactory_Access;
   function getInstance (This : in out NullIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out NullIndexedAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out NullIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out NullIndexedAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setInitialScale (This : in out NullIndexedAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.NullIndexedAnimationFactory_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.NullIndexedAnimation_Package; use org.allbinary.animation.NullIndexedAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.NullIndexedAnimationInner_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type NullIndexedAnimationInner is tagged;
   type NullIndexedAnimationInner_Access is access all NullIndexedAnimationInner'Class;
   type NullIndexedAnimationInner_Access_Array is array (Natural range <>) of NullIndexedAnimationInner_Access;
   type NullIndexedAnimationInner_Access_Array_Access is access all NullIndexedAnimationInner_Access_Array;
   type NullIndexedAnimationInner_Access_Array_Access_Array is array (Natural range <>) of NullIndexedAnimationInner_Access_Array_Access;
   type NullIndexedAnimationInner_Access_Array_Access_Array_Access is access all NullIndexedAnimationInner_Access_Array_Access_Array;

   type NullIndexedAnimationInner is new NullIndexedAnimation with null record;

   procedure Initialize (This : in out NullIndexedAnimationInner'Class);
   function Create return NullIndexedAnimationInner_Access;
   procedure paintXY (This : in out NullIndexedAnimationInner; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.NullIndexedAnimationInner_Package;


