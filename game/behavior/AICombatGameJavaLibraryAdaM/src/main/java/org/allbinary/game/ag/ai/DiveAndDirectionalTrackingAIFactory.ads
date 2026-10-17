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
with org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package; use org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package; use org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package; use org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;
with org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package; use org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;
with org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package; use org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package; use org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;

package org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package BasicRandomAIFactory_Package renames Standard.org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;
   package ArtificialIntelligenceInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type DiveAndDirectionalTrackingAIFactory is tagged;
   type DiveAndDirectionalTrackingAIFactory_Access is access all DiveAndDirectionalTrackingAIFactory'Class;
   type DiveAndDirectionalTrackingAIFactory_Access_Array is array (Natural range <>) of DiveAndDirectionalTrackingAIFactory_Access;
   type DiveAndDirectionalTrackingAIFactory_Access_Array_Access is access all DiveAndDirectionalTrackingAIFactory_Access_Array;

   type DiveAndDirectionalTrackingAIFactory is new ArtificialIntelligenceInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out DiveAndDirectionalTrackingAIFactory'Class);
   function Create return DiveAndDirectionalTrackingAIFactory_Access;
   function getInstance (This : in out DiveAndDirectionalTrackingAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access;
   procedure getInstance (This : in out DiveAndDirectionalTrackingAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package;


