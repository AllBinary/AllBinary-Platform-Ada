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

package org.allbinary.animation.transition.AnimationListenerInterface_Package is


   type AnimationListenerInterface is interface;
   type AnimationListenerInterface_Access is access all AnimationListenerInterface'Class;
   type AnimationListenerInterface_Access_Array is array (Natural range <>) of AnimationListenerInterface_Access;
   type AnimationListenerInterface_Access_Array_Access is access all AnimationListenerInterface_Access_Array;
   procedure onPlatformAnimationStart (This : in out AnimationListenerInterface) is abstract;
   procedure onPlatformAnimationEnd (This : in out AnimationListenerInterface) is abstract;
   procedure onPlatformAnimationRepeat (This : in out AnimationListenerInterface) is abstract;

end org.allbinary.animation.transition.AnimationListenerInterface_Package;


