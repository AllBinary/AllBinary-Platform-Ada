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
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package is

   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type BaseAnimationInterfaceFactoryInterfaceComposite is tagged;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access is access all BaseAnimationInterfaceFactoryInterfaceComposite'Class;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array is array (Natural range <>) of BaseAnimationInterfaceFactoryInterfaceComposite_Access;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access is access all BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array is array (Natural range <>) of BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array_Access is access all BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array;

   type BaseAnimationInterfaceFactoryInterfaceComposite is new Java_Object and AnimationInterfaceFactoryInterface with record
      basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out BaseAnimationInterfaceFactoryInterfaceComposite'Class; basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access) return BaseAnimationInterfaceFactoryInterfaceComposite_Access;
   function getInstance (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; instanceId : Integer);
   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out BaseAnimationInterfaceFactoryInterfaceComposite) return BasicAnimationInterfaceFactoryInterface_Access_Array_Access;
   procedure setBasicAnimationInterfaceFactoryInterfaceArray (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access);
   procedure setInitialScale (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package;


