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

limited with org.allbinary.ai.ArtificialIntelligence_Package;
package org.allbinary.ai.ArtificialIntelligence_Package_References is
   type ArtificialIntelligence_Access is access all org.allbinary.ai.ArtificialIntelligence_Package.ArtificialIntelligence'Class;
   type ArtificialIntelligence_Access_Array is array (Natural range <>) of ArtificialIntelligence_Access;
   type ArtificialIntelligence_Access_Array_Access is access all ArtificialIntelligence_Access_Array;
   type ArtificialIntelligence_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligence_Access_Array_Access;
   type ArtificialIntelligence_Access_Array_Access_Array_Access is access all ArtificialIntelligence_Access_Array_Access_Array;
end org.allbinary.ai.ArtificialIntelligence_Package_References;

with org.allbinary.ai.ArtificialIntelligence_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;

package org.allbinary.ai.ArtificialIntelligence_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
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


   subtype ArtificialIntelligence_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access;
   function "=" (Left, Right : ArtificialIntelligence_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligence_Package_References."=";
   subtype ArtificialIntelligence_Access_Array is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array;
   function "=" (Left, Right : ArtificialIntelligence_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligence_Package_References."=";
   subtype ArtificialIntelligence_Access_Array_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligence_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligence_Package_References."=";
   subtype ArtificialIntelligence_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligence_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligence_Package_References."=";
   subtype ArtificialIntelligence_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligence_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligence_Package_References."=";

   type ArtificialIntelligence is new Java_Object and ArtificialIntelligenceInterface with null record;
   AI_ID : constant Integer := 2;
   instance : ArtificialIntelligence_Access;

   procedure Initialize (This : in out ArtificialIntelligence'Class);
   function Create return ArtificialIntelligence_Access;
   function getInstance return ArtificialIntelligence_Access;
   procedure processAI (This : in out ArtificialIntelligence; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getId (This : in out ArtificialIntelligence) return Integer;

end org.allbinary.ai.ArtificialIntelligence_Package;


