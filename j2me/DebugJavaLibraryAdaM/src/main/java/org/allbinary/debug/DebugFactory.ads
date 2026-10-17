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
with org.allbinary.debug.NoDebug_Package; use org.allbinary.debug.NoDebug_Package;
with org.allbinary.debug.DebugInterface_Package; use org.allbinary.debug.DebugInterface_Package;

package org.allbinary.debug.DebugFactory_Package is


   type DebugFactory is tagged;
   type DebugFactory_Access is access all DebugFactory'Class;
   type DebugFactory_Access_Array is array (Natural range <>) of DebugFactory_Access;
   type DebugFactory_Access_Array_Access is access all DebugFactory_Access_Array;

   type DebugFactory is new Java_Object with null record;

   procedure Initialize (This : in out DebugFactory'Class);
   function Create return DebugFactory_Access;
   function getInstance return DebugInterface_Access;

end org.allbinary.debug.DebugFactory_Package;


