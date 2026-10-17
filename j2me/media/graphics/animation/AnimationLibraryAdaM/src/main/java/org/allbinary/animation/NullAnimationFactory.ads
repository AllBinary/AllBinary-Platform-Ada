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
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.NullAnimationFactory_Package is

   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type NullAnimationFactory is tagged;
   type NullAnimationFactory_Access is access all NullAnimationFactory'Class;
   type NullAnimationFactory_Access_Array is array (Natural range <>) of NullAnimationFactory_Access;
   type NullAnimationFactory_Access_Array_Access is access all NullAnimationFactory_Access_Array;

   type NullAnimationFactory is new AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      NULL_ANIMATION : Animation_Access;
      EMPTY_ARRAY : Animation_Access_Array_Access;
   end record;
   NULL_NOT_FOR_USE_ANIMATION_FACTORY : NullAnimationFactory_Access;
   NULL_ANIMATION_FACTORY : NullAnimationFactory_Access;

   procedure Initialize (This : in out NullAnimationFactory'Class);
   function Create return NullAnimationFactory_Access;
   function getFactoryInstance return NullAnimationFactory_Access;
   function getInstance (This : in out NullAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out NullAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out NullAnimationFactory; animationInterface : Animation_Access) return Animation_Access;
   procedure getInstanceAnimation (This : in out NullAnimationFactory; animationInterface : Animation_Access);
   procedure setInitialScale (This : in out NullAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.NullAnimationFactory_Package;


