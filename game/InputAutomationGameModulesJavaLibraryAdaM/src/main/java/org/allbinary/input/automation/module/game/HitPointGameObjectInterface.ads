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
with org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package; use org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package;

package org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package is


   type HitPointGameObjectInterface is interface and MeteredGameObjectInterface;
   type HitPointGameObjectInterface_Access is access all HitPointGameObjectInterface'Class;
   type HitPointGameObjectInterface_Access_Array is array (Natural range <>) of HitPointGameObjectInterface_Access;
   type HitPointGameObjectInterface_Access_Array_Access is access all HitPointGameObjectInterface_Access_Array;
   type HitPointGameObjectInterface_Access_Array_Access_Array is array (Natural range <>) of HitPointGameObjectInterface_Access_Array_Access;
   type HitPointGameObjectInterface_Access_Array_Access_Array_Access is access all HitPointGameObjectInterface_Access_Array_Access_Array;
   function isMoreThan (This : in out HitPointGameObjectInterface; aFloat : Float) return Boolean is abstract;
   function isCloseDeath (This : in out HitPointGameObjectInterface) return Boolean is abstract;
   function isDamaged (This : in out HitPointGameObjectInterface) return Boolean is abstract;

end org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package;


