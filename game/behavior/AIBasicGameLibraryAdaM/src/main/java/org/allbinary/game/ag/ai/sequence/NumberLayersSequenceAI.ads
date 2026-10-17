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
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.ag.ai.sequence.SequenceAI_Package; use org.allbinary.game.ag.ai.sequence.SequenceAI_Package;

package org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type NumberLayersSequenceAI is tagged;
   type NumberLayersSequenceAI_Access is access all NumberLayersSequenceAI'Class;
   type NumberLayersSequenceAI_Access_Array is array (Natural range <>) of NumberLayersSequenceAI_Access;
   type NumberLayersSequenceAI_Access_Array_Access is access all NumberLayersSequenceAI_Access_Array;

   type NumberLayersSequenceAI is new SequenceAI with record
      numberOfLayersLeft : Integer;
   end record;

   procedure Initialize (This : in out NumberLayersSequenceAI'Class; numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);
   function Create (numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return NumberLayersSequenceAI_Access;
   procedure processAI (This : in out NumberLayersSequenceAI; allBinaryLayerManager : AllBinaryLayerManager_Access);

end org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI_Package;


