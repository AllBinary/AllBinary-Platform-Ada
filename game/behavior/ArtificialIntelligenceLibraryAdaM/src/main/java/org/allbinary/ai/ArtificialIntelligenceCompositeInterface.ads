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
with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;

package org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package is


   type ArtificialIntelligenceCompositeInterface is interface;
   type ArtificialIntelligenceCompositeInterface_Access is access all ArtificialIntelligenceCompositeInterface'Class;
   type ArtificialIntelligenceCompositeInterface_Access_Array is array (Natural range <>) of ArtificialIntelligenceCompositeInterface_Access;
   type ArtificialIntelligenceCompositeInterface_Access_Array_Access is access all ArtificialIntelligenceCompositeInterface_Access_Array;
   type ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceCompositeInterface_Access_Array_Access;
   type ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access is access all ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array;
   function getArtificialIntelligenceInterface (This : in out ArtificialIntelligenceCompositeInterface) return ArtificialIntelligenceInterface_Access is abstract;

end org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package;


