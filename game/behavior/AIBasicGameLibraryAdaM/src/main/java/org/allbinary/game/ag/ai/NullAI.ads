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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.ag.ai.NullAI_Package is

   package ArtificialIntelligence_Package renames Standard.org.allbinary.ai.ArtificialIntelligence_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type NullAI is tagged;
   type NullAI_Access is access all NullAI'Class;
   type NullAI_Access_Array is array (Natural range <>) of NullAI_Access;
   type NullAI_Access_Array_Access is access all NullAI_Access_Array;
   type NullAI_Access_Array_Access_Array is array (Natural range <>) of NullAI_Access_Array_Access;
   type NullAI_Access_Array_Access_Array_Access is access all NullAI_Access_Array_Access_Array;

   type NullAI is new ArtificialIntelligence with null record;

   procedure Initialize (This : in out NullAI'Class);
   function Create return NullAI_Access;
   procedure processAI (This : in out NullAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.ag.ai.NullAI_Package;


