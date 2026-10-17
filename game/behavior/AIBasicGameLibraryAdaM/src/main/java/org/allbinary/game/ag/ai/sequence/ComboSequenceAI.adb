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


package body org.allbinary.game.ag.ai.sequence.ComboSequenceAI_Package is

   procedure Initialize_Fields (This : in out ComboSequenceAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ComboSequenceAI'Class; artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        SequenceAI_Package.Initialize (This, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ComboSequenceAI_Access is
      This : constant ComboSequenceAI_Access := new ComboSequenceAI;
   begin
      Initialize (This.all, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ComboSequenceAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        artificialIntelligenceInterfaceArray := This.getArtificialIntelligenceInterface;
        size := artificialIntelligenceInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            This.setIndex (index);
            SequenceAI (This).processAI (allBinaryLayerManager);
        end loop;
   end processAI;

end org.allbinary.game.ag.ai.sequence.ComboSequenceAI_Package;


