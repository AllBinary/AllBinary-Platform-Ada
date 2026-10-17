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
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;

package org.allbinary.business.advertisement.BottomLimiter_Package is

   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

   type BottomLimiter is tagged;
   type BottomLimiter_Access is access all BottomLimiter'Class;
   type BottomLimiter_Access_Array is array (Natural range <>) of BottomLimiter_Access;
   type BottomLimiter_Access_Array_Access is access all BottomLimiter_Access_Array;

   type BottomLimiter is new Java_Object with record
      bottom : Integer;
      deltaY : Integer;
      lower : Integer;
      higher : Integer;
   end record;
   instance : BottomLimiter_Access;

   procedure Initialize (This : in out BottomLimiter'Class);
   function Create return BottomLimiter_Access;
   function getInstance return BottomLimiter_Access;
   procedure init (This : in out BottomLimiter; lower : Integer; higher : Integer);
   procedure update (This : in out BottomLimiter);
   function getDeltaY (This : in out BottomLimiter) return Integer;
   function getBottom (This : in out BottomLimiter) return Integer;

end org.allbinary.business.advertisement.BottomLimiter_Package;


