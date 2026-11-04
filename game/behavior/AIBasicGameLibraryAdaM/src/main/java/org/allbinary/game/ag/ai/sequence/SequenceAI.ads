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

limited with org.allbinary.game.ag.ai.sequence.SequenceAI_Package;
package org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References is
   type SequenceAI_Access is access all org.allbinary.game.ag.ai.sequence.SequenceAI_Package.SequenceAI'Class;
   type SequenceAI_Access_Array is array (Natural range <>) of SequenceAI_Access;
   type SequenceAI_Access_Array_Access is access all SequenceAI_Access_Array;
   type SequenceAI_Access_Array_Access_Array is array (Natural range <>) of SequenceAI_Access_Array_Access;
   type SequenceAI_Access_Array_Access_Array_Access is access all SequenceAI_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References;

with org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;
with org.allbinary.game.ag.ai.ArrayAI_Package; use org.allbinary.game.ag.ai.ArrayAI_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.game.ag.ai.sequence.SequenceAI_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package ArrayAI_Package renames Standard.org.allbinary.game.ag.ai.ArrayAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype ArtificialIntelligenceInterface_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access;
   use type ArtificialIntelligenceInterface_Access;
   subtype ArtificialIntelligenceInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   use type GameInput_Access;
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   use type GameInput_Access_Array;
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   use type GameInput_Access_Array_Access;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   use type GameInput_Access_Array_Access_Array;
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   use type GameInput_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SequenceAI_Access is org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References.SequenceAI_Access;
   function "=" (Left, Right : SequenceAI_Access) return Boolean renames org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References."=";
   subtype SequenceAI_Access_Array is org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References.SequenceAI_Access_Array;
   function "=" (Left, Right : SequenceAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References."=";
   subtype SequenceAI_Access_Array_Access is org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References.SequenceAI_Access_Array_Access;
   function "=" (Left, Right : SequenceAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References."=";
   subtype SequenceAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References.SequenceAI_Access_Array_Access_Array;
   function "=" (Left, Right : SequenceAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References."=";
   subtype SequenceAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References.SequenceAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SequenceAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.sequence.SequenceAI_Package_References."=";

   type SequenceAI is new ArrayAI with record
      index : Integer;
   end record;
   SEQUENCE_AI : Unbounded_String;

   procedure Initialize (This : in out SequenceAI'Class; artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return SequenceAI_Access;
   procedure processAI (This : in out SequenceAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure next (This : in out SequenceAI);
   function getIndex (This : in out SequenceAI) return Integer;
   procedure setIndex (This : in out SequenceAI; index : Integer);
   function getSelectedArtificialIntelligenceInterface (This : in out SequenceAI) return ArtificialIntelligenceInterface_Access;
   function getName (This : in out SequenceAI) return Unbounded_String;
   function toString (This : in out SequenceAI) return Unbounded_String;

end org.allbinary.game.ag.ai.sequence.SequenceAI_Package;


