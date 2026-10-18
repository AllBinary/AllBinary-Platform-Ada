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
with org.allbinary.game.ag.ai.sequence.SequenceAI_Package; use org.allbinary.game.ag.ai.sequence.SequenceAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package SequenceAI_Package renames Standard.org.allbinary.game.ag.ai.sequence.SequenceAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type NumberOnOwnGroupSequenceAI is tagged;
   type NumberOnOwnGroupSequenceAI_Access is access all NumberOnOwnGroupSequenceAI'Class;
   type NumberOnOwnGroupSequenceAI_Access_Array is array (Natural range <>) of NumberOnOwnGroupSequenceAI_Access;
   type NumberOnOwnGroupSequenceAI_Access_Array_Access is access all NumberOnOwnGroupSequenceAI_Access_Array;
   type NumberOnOwnGroupSequenceAI_Access_Array_Access_Array is array (Natural range <>) of NumberOnOwnGroupSequenceAI_Access_Array_Access;
   type NumberOnOwnGroupSequenceAI_Access_Array_Access_Array_Access is access all NumberOnOwnGroupSequenceAI_Access_Array_Access_Array;

   type NumberOnOwnGroupSequenceAI is new SequenceAI with record
      numberOnSameTeam : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out NumberOnOwnGroupSequenceAI'Class; numberOnSameTeam : Integer_Array_Access; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (numberOnSameTeam : Integer_Array_Access; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return NumberOnOwnGroupSequenceAI_Access;
   procedure processAI (This : in out NumberOnOwnGroupSequenceAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package;


