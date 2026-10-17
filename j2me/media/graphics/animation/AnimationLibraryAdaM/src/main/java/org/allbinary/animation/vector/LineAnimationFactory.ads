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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;

package org.allbinary.animation.vector.LineAnimationFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;

   type LineAnimationFactory is tagged;
   type LineAnimationFactory_Access is access all LineAnimationFactory'Class;
   type LineAnimationFactory_Access_Array is array (Natural range <>) of LineAnimationFactory_Access;
   type LineAnimationFactory_Access_Array_Access is access all LineAnimationFactory_Access_Array;

   type LineAnimationFactory is new AnimationInterfaceFactoryInterface with record
      basicColor : BasicColor_Access;
   end record;

   procedure Initialize (This : in out LineAnimationFactory'Class; basicColor : BasicColor_Access);
   function Create (basicColor : BasicColor_Access) return LineAnimationFactory_Access;
   function getInstance (This : in out LineAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out LineAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out LineAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.vector.LineAnimationFactory_Package;


