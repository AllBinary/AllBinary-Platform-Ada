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
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package; use org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.ai.scroller.PacePatrolAIFactory_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package ArtificialIntelligenceInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type PacePatrolAIFactory is tagged;
   type PacePatrolAIFactory_Access is access all PacePatrolAIFactory'Class;
   type PacePatrolAIFactory_Access_Array is array (Natural range <>) of PacePatrolAIFactory_Access;
   type PacePatrolAIFactory_Access_Array_Access is access all PacePatrolAIFactory_Access_Array;
   type PacePatrolAIFactory_Access_Array_Access_Array is array (Natural range <>) of PacePatrolAIFactory_Access_Array_Access;
   type PacePatrolAIFactory_Access_Array_Access_Array_Access is access all PacePatrolAIFactory_Access_Array_Access_Array;

   type PacePatrolAIFactory is new Java_Object and ArtificialIntelligenceInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out PacePatrolAIFactory'Class);
   function Create return PacePatrolAIFactory_Access;
   function getInstance (This : in out PacePatrolAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access;
   procedure getInstance (This : in out PacePatrolAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);

end org.allbinary.game.ag.ai.scroller.PacePatrolAIFactory_Package;


