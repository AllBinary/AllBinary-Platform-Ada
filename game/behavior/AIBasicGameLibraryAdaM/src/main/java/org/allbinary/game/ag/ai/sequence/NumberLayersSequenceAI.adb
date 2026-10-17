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


package body org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI_Package is

   procedure Initialize_Fields (This : in out NumberLayersSequenceAI'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out NumberLayersSequenceAI'Class; numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        SequenceAI_Package.Initialize (This, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.numberOfLayersLeft := numberOfEnemiesLeft;
   end Initialize;

   function Create (numberOfEnemiesLeft : Integer; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return NumberLayersSequenceAI_Access is
      This : constant NumberLayersSequenceAI_Access := new NumberLayersSequenceAI;
   begin
      NumberLayersSequenceAI_Package.Initialize (This.all, numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out NumberLayersSequenceAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        if (This.getIndex) = (0) then
            if (allBinaryLayerManager.getSize) < (This.numberOfLayersLeft) then
                This.setIndex (1);
            end if;
        end if;
        SequenceAI (This).processAI (allBinaryLayerManager);
   end processAI;

end org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI_Package;


