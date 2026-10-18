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


package body org.allbinary.game.ag.ai.sequence.SequenceAI_Package is

   procedure Initialize_Fields (This : in out SequenceAI'Class) is
   begin
      null;
      This.index := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out SequenceAI'Class; artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        ArrayAI_Package.Initialize (This, artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
   end Initialize;

   function Create (artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface_Access_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return SequenceAI_Access is
      This : constant SequenceAI_Access := new SequenceAI;
   begin
      SequenceAI_Package.Initialize (This.all, artificialIntelligenceInterfaceArray, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out SequenceAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        SequenceAI'Class (This).getArtificialIntelligenceInterface (This.index).processAI (allBinaryLayerManager);
   end processAI;

   procedure next (This : in out SequenceAI) is
      artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access;
      artificialIntelligenceTransitionInterface : ArtificialIntelligenceTransitionInterface_Access;
   begin
        This.index := This.index + 1;
        artificialIntelligenceInterface := SequenceAI'Class (This).getSelectedArtificialIntelligenceInterface;
        if (artificialIntelligenceInterface.getId) = (ArtificialIntelligence_Package.AI_ID) then
            artificialIntelligenceTransitionInterface := ArtificialIntelligenceTransitionInterface_Access (artificialIntelligenceInterface);
            artificialIntelligenceTransitionInterface.transition;
        end if;
   end next;

   function getIndex (This : in out SequenceAI) return Integer is
   begin
        return This.index;
   end getIndex;

   procedure setIndex (This : in out SequenceAI; index : Integer) is
   begin
        This.index := index;
   end setIndex;

   function getSelectedArtificialIntelligenceInterface (This : in out SequenceAI) return ArtificialIntelligenceInterface_Access is
   begin
        return SequenceAI'Class (This).getArtificialIntelligenceInterface (This.index);
   end getSelectedArtificialIntelligenceInterface;

   function getName (This : in out SequenceAI) return Unbounded_String is
   begin
        return SequenceAI_Package.SEQUENCE_AI;
   end getName;

   function toString (This : in out SequenceAI) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (ArrayAI (This).toString);
        stringBuffer.append (To_Unbounded_String (" Selected AI: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (SequenceAI'Class (This).getSelectedArtificialIntelligenceInterface));
        return stringBuffer.toString;
   end toString;

begin
   null;
   SEQUENCE_AI := To_Unbounded_String ("Sequence AI");

end org.allbinary.game.ag.ai.sequence.SequenceAI_Package;


