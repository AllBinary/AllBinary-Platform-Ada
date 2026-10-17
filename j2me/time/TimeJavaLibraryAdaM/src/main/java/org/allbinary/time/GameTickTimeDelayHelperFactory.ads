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

package org.allbinary.time.GameTickTimeDelayHelperFactory_Package is


   type GameTickTimeDelayHelperFactory is tagged;
   type GameTickTimeDelayHelperFactory_Access is access all GameTickTimeDelayHelperFactory'Class;
   type GameTickTimeDelayHelperFactory_Access_Array is array (Natural range <>) of GameTickTimeDelayHelperFactory_Access;
   type GameTickTimeDelayHelperFactory_Access_Array_Access is access all GameTickTimeDelayHelperFactory_Access_Array;

   type GameTickTimeDelayHelperFactory is new Java_Object with null record;
   instance : GameTickTimeDelayHelper_Access;

   procedure Initialize (This : in out GameTickTimeDelayHelperFactory'Class);
   function Create return GameTickTimeDelayHelperFactory_Access;
   function getInstance return GameTickTimeDelayHelper_Access;
   procedure getInstance;

end org.allbinary.time.GameTickTimeDelayHelperFactory_Package;


