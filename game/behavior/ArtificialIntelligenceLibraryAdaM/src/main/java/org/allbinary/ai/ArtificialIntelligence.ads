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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;

package org.allbinary.ai.ArtificialIntelligence_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type ArtificialIntelligence is tagged;
   type ArtificialIntelligence_Access is access all ArtificialIntelligence'Class;
   type ArtificialIntelligence_Access_Array is array (Natural range <>) of ArtificialIntelligence_Access;
   type ArtificialIntelligence_Access_Array_Access is access all ArtificialIntelligence_Access_Array;

   type ArtificialIntelligence is new ArtificialIntelligenceInterface with null record;
   AI_ID : Integer;
   instance : ArtificialIntelligence_Access;

   procedure Initialize (This : in out ArtificialIntelligence'Class);
   function Create return ArtificialIntelligence_Access;
   function getInstance return ArtificialIntelligence_Access;
   procedure processAI (This : in out ArtificialIntelligence; layerManager : AllBinaryLayerManager_Access);
   function getId (This : in out ArtificialIntelligence) return Integer;

end org.allbinary.ai.ArtificialIntelligence_Package;


