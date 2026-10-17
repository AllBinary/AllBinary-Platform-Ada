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


   procedure Initialize (This : in out ArrayAI'Class; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.artificialIntelligenceInterfaceArray := artificialIntelligenceInterface;
   end Initialize;

   function Create (artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArrayAI_Access is
      This : constant ArrayAI_Access := new ArrayAI;
   begin
      ArrayAI_Package.Initialize (This.all, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ArrayAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
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


