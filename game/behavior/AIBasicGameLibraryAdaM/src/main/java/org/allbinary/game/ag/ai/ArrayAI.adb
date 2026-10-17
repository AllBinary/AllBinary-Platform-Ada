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


package body org.allbinary.game.ag.ai.ArrayAI_Package is

   procedure Initialize_Fields (This : in out ArrayAI'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ArrayAI'Class; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.artificialIntelligenceInterfaceArray := artificialIntelligenceInterface;
   end Initialize;

   function Create (artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArrayAI_Access is
      This : constant ArrayAI_Access := new ArrayAI;
   begin
      ArrayAI_Package.Initialize (This.all, artificialIntelligenceInterface, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ArrayAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      size : Integer;
      index : Integer;
   begin
        size := This.artificialIntelligenceInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            This.artificialIntelligenceInterfaceArray (index).processAI (allBinaryLayerManager);
        end loop;
   end processAI;

   function getArtificialIntelligenceInterface (This : in out ArrayAI) return ArtificialIntelligenceInterface_Access_Array_Access is
   begin
        return This.artificialIntelligenceInterfaceArray;
   end getArtificialIntelligenceInterface;

end org.allbinary.game.ag.ai.ArrayAI_Package;


