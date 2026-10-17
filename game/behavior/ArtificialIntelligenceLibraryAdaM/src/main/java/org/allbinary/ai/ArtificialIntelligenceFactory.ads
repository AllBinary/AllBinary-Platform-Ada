-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package; use org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package;
with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;

package org.allbinary.ai.ArtificialIntelligenceFactory_Package is


   type ArtificialIntelligenceFactory is tagged;
   type ArtificialIntelligenceFactory_Access is access all ArtificialIntelligenceFactory'Class;
   type ArtificialIntelligenceFactory_Access_Array is array (Natural range <>) of ArtificialIntelligenceFactory_Access;
   type ArtificialIntelligenceFactory_Access_Array_Access is access all ArtificialIntelligenceFactory_Access_Array;

   type ArtificialIntelligenceFactory is new ArtificialIntelligenceFactoryInterface with null record;

   procedure Initialize (This : in out ArtificialIntelligenceFactory'Class);
   function Create return ArtificialIntelligenceFactory_Access;
   function getInstance (This : in out ArtificialIntelligenceFactory; anyType : Java_Object_Access) return ArtificialIntelligence_Access;
   procedure getInstance (This : in out ArtificialIntelligenceFactory; anyType : Java_Object_Access);

end org.allbinary.ai.ArtificialIntelligenceFactory_Package;


