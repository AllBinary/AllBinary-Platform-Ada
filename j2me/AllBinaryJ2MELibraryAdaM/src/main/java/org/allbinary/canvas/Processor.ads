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

package org.allbinary.canvas.Processor_Package is


   type Processor is tagged;
   type Processor_Access is access all Processor'Class;
   type Processor_Access_Array is array (Natural range <>) of Processor_Access;
   type Processor_Access_Array_Access is access all Processor_Access_Array;

   type Processor is new Java_Object with null record;
   SINGLETON : Processor_Access;

   procedure Initialize (This : in out Processor'Class);
   function Create return Processor_Access;
   function getInstance return Processor_Access;
   procedure process (This : in out Processor);
   procedure processt (This : in out Processor; timeDelta : Long_Long_Integer);

end org.allbinary.canvas.Processor_Package;


