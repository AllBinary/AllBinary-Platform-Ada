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

package org.allbinary.animation.transition.shake.ShakeEventFactory_Package is


   type ShakeEventFactory is tagged;
   type ShakeEventFactory_Access is access all ShakeEventFactory'Class;
   type ShakeEventFactory_Access_Array is array (Natural range <>) of ShakeEventFactory_Access;
   type ShakeEventFactory_Access_Array_Access is access all ShakeEventFactory_Access_Array;

   type ShakeEventFactory is new Java_Object with record
      MICRO : ShakeEvent_Access;
      SMALL : ShakeEvent_Access;
      MEDIUM : ShakeEvent_Access;
      LARGE : ShakeEvent_Access;
   end record;
   instance : ShakeEventFactory_Access;

   procedure Initialize (This : in out ShakeEventFactory'Class);
   function Create return ShakeEventFactory_Access;
   function getInstance return ShakeEventFactory_Access;
   procedure getInstance;
   procedure init (This : in out ShakeEventFactory);

end org.allbinary.animation.transition.shake.ShakeEventFactory_Package;


