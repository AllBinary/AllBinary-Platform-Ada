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

with AllBinary_Java;
limited with org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package;
package org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References is
   type NumberLayersSequenceAIFactory_Access is access all org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package.NumberLayersSequenceAIFactory'Class;
   type NumberLayersSequenceAIFactory_Access_Array is array (Natural range <>) of NumberLayersSequenceAIFactory_Access;
   type NumberLayersSequenceAIFactory_Access_Array_Access is access all NumberLayersSequenceAIFactory_Access_Array;
   type NumberLayersSequenceAIFactory_Access_Array_Access_Array is array (Natural range <>) of NumberLayersSequenceAIFactory_Access_Array_Access;
   type NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access is access all NumberLayersSequenceAIFactory_Access_Array_Access_Array;
   type NumberLayersSequenceAIFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NumberLayersSequenceAIFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : NumberLayersSequenceAIFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NumberLayersSequenceAIFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NumberLayersSequenceAIFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NumberLayersSequenceAIFactory_Access_Array_Access is (if Value /= null and then Value.all in NumberLayersSequenceAIFactory_Access_Array_Object'Class then NumberLayersSequenceAIFactory_Access_Array_Object'Class (Value.all).Value else null);
   type NumberLayersSequenceAIFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NumberLayersSequenceAIFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NumberLayersSequenceAIFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NumberLayersSequenceAIFactory_Access_Array_Access_Array_Object'Class then NumberLayersSequenceAIFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References;

with org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References;
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
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype NumberLayersSequenceAIFactory_Access is org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.NumberLayersSequenceAIFactory_Access;
   function "=" (Left, Right : NumberLayersSequenceAIFactory_Access) return Boolean renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References."=";
   subtype NumberLayersSequenceAIFactory_Access_Array is org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.NumberLayersSequenceAIFactory_Access_Array;
   function "=" (Left, Right : NumberLayersSequenceAIFactory_Access_Array) return Boolean renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References."=";
   subtype NumberLayersSequenceAIFactory_Access_Array_Access is org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.NumberLayersSequenceAIFactory_Access_Array_Access;
   function "=" (Left, Right : NumberLayersSequenceAIFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References."=";
   function Java_Box (Value : NumberLayersSequenceAIFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.Java_Box;
   function Java_Unbox_NumberLayersSequenceAIFactory_Access_Array (Value : access Java_Object'Class) return NumberLayersSequenceAIFactory_Access_Array_Access renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.Java_Unbox_NumberLayersSequenceAIFactory_Access_Array;
   subtype NumberLayersSequenceAIFactory_Access_Array_Access_Array is org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.NumberLayersSequenceAIFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NumberLayersSequenceAIFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References."=";
   subtype NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References."=";
   function Java_Box (Value : NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.Java_Box;
   function Java_Unbox_NumberLayersSequenceAIFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return NumberLayersSequenceAIFactory_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package_References.Java_Unbox_NumberLayersSequenceAIFactory_Access_Array_Access_Array;

   type NumberLayersSequenceAIFactory is new Java_Object with null record;

   procedure Initialize (This : in out NumberLayersSequenceAIFactory'Class);
   function Create return NumberLayersSequenceAIFactory_Access;
   function getInstance (This : in out NumberLayersSequenceAIFactory; numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access;
   procedure getInstance (This : in out NumberLayersSequenceAIFactory; numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);

end org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package;


