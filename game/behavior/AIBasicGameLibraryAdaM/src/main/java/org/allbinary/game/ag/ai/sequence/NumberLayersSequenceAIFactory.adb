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


with org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI_Package; use org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI_Package;

package body org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package is

   procedure Initialize_Fields (This : in out NumberLayersSequenceAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NumberLayersSequenceAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NumberLayersSequenceAIFactory_Access is
      This : constant NumberLayersSequenceAIFactory_Access := new NumberLayersSequenceAIFactory;
   begin
      NumberLayersSequenceAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out NumberLayersSequenceAIFactory; numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        return ArtificialIntelligenceInterface_Access (NumberLayersSequenceAI_Package.Create (numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput));
   end getInstance;

   procedure getInstance (This : in out NumberLayersSequenceAIFactory; numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := NumberLayersSequenceAIFactory'Class (This).getInstance (numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAIFactory_Package;


