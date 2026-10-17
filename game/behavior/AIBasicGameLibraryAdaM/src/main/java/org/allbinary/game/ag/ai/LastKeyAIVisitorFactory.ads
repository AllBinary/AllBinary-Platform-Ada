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

package org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package is


   type LastKeyAIVisitorFactory is tagged;
   type LastKeyAIVisitorFactory_Access is access all LastKeyAIVisitorFactory'Class;
   type LastKeyAIVisitorFactory_Access_Array is array (Natural range <>) of LastKeyAIVisitorFactory_Access;
   type LastKeyAIVisitorFactory_Access_Array_Access is access all LastKeyAIVisitorFactory_Access_Array;

   type LastKeyAIVisitorFactory is new Java_Object with null record;
   instance : LastKeyAIVisitor_Access;

   procedure Initialize (This : in out LastKeyAIVisitorFactory'Class);
   function Create return LastKeyAIVisitorFactory_Access;
   function getInstance return LastKeyAIVisitor_Access;
   procedure getInstance;

end org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package;


