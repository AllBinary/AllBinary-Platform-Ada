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

package org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package is


   type ArtificialIntelligenceTransitionInterface is interface;
   type ArtificialIntelligenceTransitionInterface_Access is access all ArtificialIntelligenceTransitionInterface'Class;
   type ArtificialIntelligenceTransitionInterface_Access_Array is array (Natural range <>) of ArtificialIntelligenceTransitionInterface_Access;
   type ArtificialIntelligenceTransitionInterface_Access_Array_Access is access all ArtificialIntelligenceTransitionInterface_Access_Array;
   type ArtificialIntelligenceTransitionInterface_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceTransitionInterface_Access_Array_Access;
   type ArtificialIntelligenceTransitionInterface_Access_Array_Access_Array_Access is access all ArtificialIntelligenceTransitionInterface_Access_Array_Access_Array;
   procedure transition (This : in out ArtificialIntelligenceTransitionInterface) is abstract;

end org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package;


