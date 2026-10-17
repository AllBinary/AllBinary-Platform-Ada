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

package org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package is


   type NoButtonsTouchInputFactory is tagged;
   type NoButtonsTouchInputFactory_Access is access all NoButtonsTouchInputFactory'Class;
   type NoButtonsTouchInputFactory_Access_Array is array (Natural range <>) of NoButtonsTouchInputFactory_Access;
   type NoButtonsTouchInputFactory_Access_Array_Access is access all NoButtonsTouchInputFactory_Access_Array;

   type NoButtonsTouchInputFactory is new Java_Object with null record;
   instance : BaseTouchInput_Access;

   procedure Initialize (This : in out NoButtonsTouchInputFactory'Class);
   function Create return NoButtonsTouchInputFactory_Access;
   function getInstance return BaseTouchInput_Access;
   procedure getInstance;

end org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package;


