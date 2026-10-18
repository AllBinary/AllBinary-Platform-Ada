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
with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;

package org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package is


   type ArtificialIntelligenceFactoryInterface is interface;
   type ArtificialIntelligenceFactoryInterface_Access is access all ArtificialIntelligenceFactoryInterface'Class;
   type ArtificialIntelligenceFactoryInterface_Access_Array is array (Natural range <>) of ArtificialIntelligenceFactoryInterface_Access;
   type ArtificialIntelligenceFactoryInterface_Access_Array_Access is access all ArtificialIntelligenceFactoryInterface_Access_Array;
   type ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceFactoryInterface_Access_Array_Access;
   type ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access is access all ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array;
   function getInstance (This : in out ArtificialIntelligenceFactoryInterface; anyType_Param : access Java_Object'Class) return ArtificialIntelligence_Access is abstract;

end org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package;


