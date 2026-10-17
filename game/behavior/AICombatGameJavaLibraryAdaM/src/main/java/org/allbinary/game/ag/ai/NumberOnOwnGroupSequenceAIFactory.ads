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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package; use org.allbinary.game.ag.ai.NumberInSameGroupSequence_Package;
with org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package; use org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package;

package org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAIFactory_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type NumberOnOwnGroupSequenceAIFactory is tagged;
   type NumberOnOwnGroupSequenceAIFactory_Access is access all NumberOnOwnGroupSequenceAIFactory'Class;
   type NumberOnOwnGroupSequenceAIFactory_Access_Array is array (Natural range <>) of NumberOnOwnGroupSequenceAIFactory_Access;
   type NumberOnOwnGroupSequenceAIFactory_Access_Array_Access is access all NumberOnOwnGroupSequenceAIFactory_Access_Array;

   type NumberOnOwnGroupSequenceAIFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NumberOnOwnGroupSequenceAIFactory'Class);
   function Create return NumberOnOwnGroupSequenceAIFactory_Access;
   function getInstance (This : in out NumberOnOwnGroupSequenceAIFactory; hashtable_Param : access ABHashtable'Class; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) return ArtificialIntelligenceInterface_Access;
   procedure getInstance (This : in out NumberOnOwnGroupSequenceAIFactory; hashtable_Param : access ABHashtable'Class; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class);

end org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAIFactory_Package;


