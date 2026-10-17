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

package org.allbinary.game.input.InputProcessorFactory_Package is


   type InputProcessorFactory is tagged;
   type InputProcessorFactory_Access is access all InputProcessorFactory'Class;
   type InputProcessorFactory_Access_Array is array (Natural range <>) of InputProcessorFactory_Access;
   type InputProcessorFactory_Access_Array_Access is access all InputProcessorFactory_Access_Array;

   type InputProcessorFactory is new Java_Object with record
      inputProcessor : InputProcessor_Access;
   end record;
   instance : InputProcessorFactory_Access;

   procedure Initialize (This : in out InputProcessorFactory'Class);
   function Create return InputProcessorFactory_Access;
   function getInstance return InputProcessorFactory_Access;
   procedure getInstance;
   function getInputProcessor (This : in out InputProcessorFactory) return InputProcessor_Access;
   procedure getInputProcessor (This : in out InputProcessorFactory);

end org.allbinary.game.input.InputProcessorFactory_Package;


