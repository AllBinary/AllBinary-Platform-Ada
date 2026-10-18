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
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;

package org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package is


   type ShakeAnimationListenerFactory is tagged;
   type ShakeAnimationListenerFactory_Access is access all ShakeAnimationListenerFactory'Class;
   type ShakeAnimationListenerFactory_Access_Array is array (Natural range <>) of ShakeAnimationListenerFactory_Access;
   type ShakeAnimationListenerFactory_Access_Array_Access is access all ShakeAnimationListenerFactory_Access_Array;
   type ShakeAnimationListenerFactory_Access_Array_Access_Array is array (Natural range <>) of ShakeAnimationListenerFactory_Access_Array_Access;
   type ShakeAnimationListenerFactory_Access_Array_Access_Array_Access is access all ShakeAnimationListenerFactory_Access_Array_Access_Array;

   type ShakeAnimationListenerFactory is new Java_Object with null record;

   procedure Initialize (This : in out ShakeAnimationListenerFactory'Class);
   function Create return ShakeAnimationListenerFactory_Access;
   function getInstance return ShakeAnimationListener_Access;

end org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;


