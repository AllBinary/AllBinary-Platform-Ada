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
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;

package org.allbinary.ai.ArtificialIntelligenceLayerManager_Package is

   package LayerManager_Package renames Standard.org.allbinary.layer.LayerManager_Package;

   type ArtificialIntelligenceLayerManager is tagged;
   type ArtificialIntelligenceLayerManager_Access is access all ArtificialIntelligenceLayerManager'Class;
   type ArtificialIntelligenceLayerManager_Access_Array is array (Natural range <>) of ArtificialIntelligenceLayerManager_Access;
   type ArtificialIntelligenceLayerManager_Access_Array_Access is access all ArtificialIntelligenceLayerManager_Access_Array;
   type ArtificialIntelligenceLayerManager_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceLayerManager_Access_Array_Access;
   type ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access is access all ArtificialIntelligenceLayerManager_Access_Array_Access_Array;

   type ArtificialIntelligenceLayerManager is new LayerManager with null record;

   procedure Initialize (This : in out ArtificialIntelligenceLayerManager'Class);
   function Create return ArtificialIntelligenceLayerManager_Access;

end org.allbinary.ai.ArtificialIntelligenceLayerManager_Package;


