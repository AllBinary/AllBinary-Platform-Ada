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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type BasicProbabilityAIDataFactory is tagged;
   type BasicProbabilityAIDataFactory_Access is access all BasicProbabilityAIDataFactory'Class;
   type BasicProbabilityAIDataFactory_Access_Array is array (Natural range <>) of BasicProbabilityAIDataFactory_Access;
   type BasicProbabilityAIDataFactory_Access_Array_Access is access all BasicProbabilityAIDataFactory_Access_Array;
   type BasicProbabilityAIDataFactory_Access_Array_Access_Array is array (Natural range <>) of BasicProbabilityAIDataFactory_Access_Array_Access;
   type BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access is access all BasicProbabilityAIDataFactory_Access_Array_Access_Array;

   type BasicProbabilityAIDataFactory is new Java_Object with null record;

   procedure Initialize (This : in out BasicProbabilityAIDataFactory'Class);
   function Create return BasicProbabilityAIDataFactory_Access;
   function getInstance (This : in out BasicProbabilityAIDataFactory) return ABHashtable_Access;

end org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;


