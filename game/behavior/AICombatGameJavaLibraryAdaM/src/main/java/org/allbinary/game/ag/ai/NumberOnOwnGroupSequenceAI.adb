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


package body org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package is

   procedure Initialize_Fields (This : in out NumberOnOwnGroupSequenceAI'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out NumberOnOwnGroupSequenceAI'Class; numberOnSameTeam : Integer_Array_Access; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        SequenceAI_Package.Initialize (This, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.numberOnSameTeam := numberOnSameTeam;
   end Initialize;

   function Create (numberOnSameTeam : Integer_Array_Access; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return NumberOnOwnGroupSequenceAI_Access is
      This : constant NumberOnOwnGroupSequenceAI_Access := new NumberOnOwnGroupSequenceAI;
   begin
      NumberOnOwnGroupSequenceAI_Package.Initialize (This.all, numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out NumberOnOwnGroupSequenceAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerInterface : AllBinaryLayer_Access;
      index : Integer;
      size : Integer;
   begin
        layerInterface := This.getOwnerLayerInterface;
        index := This.getIndex;
        if (This.numberOnSameTeam'Length) > (index) then
            size := GroupLayerManagerListener_Package.getInstance.getGroupSizeFromInterface (layerInterface);
            if (This.numberOnSameTeam (index).intValue) > (size) then
                This.next;
            end if;
        end if;
        SequenceAI (This).processAI (allBinaryLayerManager);
   end processAI;

end org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI_Package;


