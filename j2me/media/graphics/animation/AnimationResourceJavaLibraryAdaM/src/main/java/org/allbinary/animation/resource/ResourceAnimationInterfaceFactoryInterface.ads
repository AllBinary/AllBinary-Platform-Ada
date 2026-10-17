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
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package is

   package BasicAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;

   type ResourceAnimationInterfaceFactoryInterface is interface;
   type ResourceAnimationInterfaceFactoryInterface_Access is access all ResourceAnimationInterfaceFactoryInterface'Class;
   type ResourceAnimationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of ResourceAnimationInterfaceFactoryInterface_Access;
   type ResourceAnimationInterfaceFactoryInterface_Access_Array_Access is access all ResourceAnimationInterfaceFactoryInterface_Access_Array;
   function getBasicAnimationInterfaceFactoryInstance (This : in out ResourceAnimationInterfaceFactoryInterface; resource : Unbounded_String) return BasicAnimationInterfaceFactoryInterface_Access is abstract;

end org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package;


