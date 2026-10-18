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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.NullRotationAnimationFactory_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type NullRotationAnimationFactory is tagged;
   type NullRotationAnimationFactory_Access is access all NullRotationAnimationFactory'Class;
   type NullRotationAnimationFactory_Access_Array is array (Natural range <>) of NullRotationAnimationFactory_Access;
   type NullRotationAnimationFactory_Access_Array_Access is access all NullRotationAnimationFactory_Access_Array;
   type NullRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of NullRotationAnimationFactory_Access_Array_Access;
   type NullRotationAnimationFactory_Access_Array_Access_Array_Access is access all NullRotationAnimationFactory_Access_Array_Access_Array;

   type NullRotationAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      NULL_ROTATION_ANIMATION_ARRAY : RotationAnimation_Access_Array_Access;
      NULL_ANIMATION : Animation_Access;
   end record;
   NULL_ROTATION_ANIMATION_FACTORY : NullRotationAnimationFactory_Access;

   procedure Initialize (This : in out NullRotationAnimationFactory'Class);
   function Create return NullRotationAnimationFactory_Access;
   function getFactoryInstance return NullRotationAnimationFactory_Access;
   function getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out NullRotationAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out NullRotationAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setInitialScale (This : in out NullRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.NullRotationAnimationFactory_Package;

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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.NullRotationAnimation2_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type NullRotationAnimation2 is tagged;
   type NullRotationAnimation2_Access is access all NullRotationAnimation2'Class;
   type NullRotationAnimation2_Access_Array is array (Natural range <>) of NullRotationAnimation2_Access;
   type NullRotationAnimation2_Access_Array_Access is access all NullRotationAnimation2_Access_Array;
   type NullRotationAnimation2_Access_Array_Access_Array is array (Natural range <>) of NullRotationAnimation2_Access_Array_Access;
   type NullRotationAnimation2_Access_Array_Access_Array_Access is access all NullRotationAnimation2_Access_Array_Access_Array;

   type NullRotationAnimation2 is new NullRotationAnimation with null record;

   procedure Initialize (This : in out NullRotationAnimation2'Class);
   function Create return NullRotationAnimation2_Access;
   procedure paintXY (This : in out NullRotationAnimation2; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.NullRotationAnimation2_Package;


