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
with org.allbinary.game.ag.ai.ArrayAI_Package; use org.allbinary.game.ag.ai.ArrayAI_Package;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package; use org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.ai.scroller.RandomPatrolFlockingFiringAIFactory_Package is

   package ArtificialIntelligenceInterface_Package renames org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package ArrayAI_Package renames org.allbinary.game.ag.ai.ArrayAI_Package;
   package ArtificialIntelligenceInterfaceFactoryInterface_Package renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
   package GameInput_Package renames org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type RandomPatrolFlockingFiringAIFactory is tagged;
   type RandomPatrolFlockingFiringAIFactory_Access is access all RandomPatrolFlockingFiringAIFactory'Class;
   type RandomPatrolFlockingFiringAIFactory_Access_Array is array (Natural range <>) of RandomPatrolFlockingFiringAIFactory_Access;
   type RandomPatrolFlockingFiringAIFactory_Access_Array_Access is access all RandomPatrolFlockingFiringAIFactory_Access_Array;

   type RandomPatrolFlockingFiringAIFactory is new ArtificialIntelligenceInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out RandomPatrolFlockingFiringAIFactory'Class);
   function Create return RandomPatrolFlockingFiringAIFactory_Access;
   function getInstance (This : in out RandomPatrolFlockingFiringAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access;
   procedure getInstance (This : in out RandomPatrolFlockingFiringAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);

end org.allbinary.game.ag.ai.scroller.RandomPatrolFlockingFiringAIFactory_Package;


