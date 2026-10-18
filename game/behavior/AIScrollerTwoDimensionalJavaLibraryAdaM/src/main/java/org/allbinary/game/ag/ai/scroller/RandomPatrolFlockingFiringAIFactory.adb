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


with org.allbinary.game.ag.ai.ArrayAI_Package; use org.allbinary.game.ag.ai.ArrayAI_Package;
with org.allbinary.game.ag.ai.scroller.RandomPatrolAI_Package; use org.allbinary.game.ag.ai.scroller.RandomPatrolAI_Package;
with org.allbinary.game.ag.ai.scroller.TimedFireAI_Package; use org.allbinary.game.ag.ai.scroller.TimedFireAI_Package;

package body org.allbinary.game.ag.ai.scroller.RandomPatrolFlockingFiringAIFactory_Package is

   package ArrayAI_Package renames Standard.org.allbinary.game.ag.ai.ArrayAI_Package;
   procedure Initialize_Fields (This : in out RandomPatrolFlockingFiringAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RandomPatrolFlockingFiringAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RandomPatrolFlockingFiringAIFactory_Access is
      This : constant RandomPatrolFlockingFiringAIFactory_Access := new RandomPatrolFlockingFiringAIFactory;
   begin
      RandomPatrolFlockingFiringAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out RandomPatrolFlockingFiringAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access;
   begin
        artificialIntelligenceInterface := new ArtificialIntelligenceInterface_Access_Array'(0 .. (2) - 1 => null);
        artificialIntelligenceInterface (0) := RandomPatrolAI_Package.Create (hashtable, ownerLayerInterface, gameInput);
        artificialIntelligenceInterface (1) := TimedFireAI_Package.Create (1800, ownerLayerInterface, gameInput);
        return ArtificialIntelligenceInterface_Access (ArrayAI_Package.Create (artificialIntelligenceInterface, ownerLayerInterface, gameInput));
   end getInstance;

   procedure getInstance (This : in out RandomPatrolFlockingFiringAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := RandomPatrolFlockingFiringAIFactory'Class (This).getInstance (hashtable_Param => hashtable_Param, ownerLayerInterface_Param => ownerLayerInterface_Param, gameInput_Param => gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.scroller.RandomPatrolFlockingFiringAIFactory_Package;


