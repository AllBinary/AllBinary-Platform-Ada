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
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.AnimationInterfaceFactoryInterfaceComposite_Package is

   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;

   type AnimationInterfaceFactoryInterfaceComposite is tagged;
   type AnimationInterfaceFactoryInterfaceComposite_Access is access all AnimationInterfaceFactoryInterfaceComposite'Class;
   type AnimationInterfaceFactoryInterfaceComposite_Access_Array is array (Natural range <>) of AnimationInterfaceFactoryInterfaceComposite_Access;
   type AnimationInterfaceFactoryInterfaceComposite_Access_Array_Access is access all AnimationInterfaceFactoryInterfaceComposite_Access_Array;

   type AnimationInterfaceFactoryInterfaceComposite is new AnimationInterfaceFactoryInterface with record
      animationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out AnimationInterfaceFactoryInterfaceComposite'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access) return AnimationInterfaceFactoryInterfaceComposite_Access;
   function getInstance (This : in out AnimationInterfaceFactoryInterfaceComposite; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AnimationInterfaceFactoryInterfaceComposite; instanceId : Integer);
   function getAnimationInterfaceFactoryInterfaceArray (This : in out AnimationInterfaceFactoryInterfaceComposite) return AnimationInterfaceFactoryInterface_Access_Array_Access;
   procedure getAnimationInterfaceFactoryInterfaceArray (This : in out AnimationInterfaceFactoryInterfaceComposite);
   procedure setInitialScale (This : in out AnimationInterfaceFactoryInterfaceComposite; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.AnimationInterfaceFactoryInterfaceComposite_Package;


