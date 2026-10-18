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
with org.allbinary.game.ag.ai.ThrustAIVisitor_Package; use org.allbinary.game.ag.ai.ThrustAIVisitor_Package;

package org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package is


   type ThrustAIVisitorFactory is tagged;
   type ThrustAIVisitorFactory_Access is access all ThrustAIVisitorFactory'Class;
   type ThrustAIVisitorFactory_Access_Array is array (Natural range <>) of ThrustAIVisitorFactory_Access;
   type ThrustAIVisitorFactory_Access_Array_Access is access all ThrustAIVisitorFactory_Access_Array;
   type ThrustAIVisitorFactory_Access_Array_Access_Array is array (Natural range <>) of ThrustAIVisitorFactory_Access_Array_Access;
   type ThrustAIVisitorFactory_Access_Array_Access_Array_Access is access all ThrustAIVisitorFactory_Access_Array_Access_Array;

   type ThrustAIVisitorFactory is new Java_Object with null record;
   instance : ThrustAIVisitor_Access;

   procedure Initialize (This : in out ThrustAIVisitorFactory'Class);
   function Create return ThrustAIVisitorFactory_Access;
   function getInstance return ThrustAIVisitor_Access;

end org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;


