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


with org.allbinary.ai.ArtificialIntelligence_Package; use org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;
with org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package; use org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package;
with org.allbinary.game.ag.ai.ArrayAI_Package; use org.allbinary.game.ag.ai.ArrayAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.ag.ai.sequence.SequenceAI_Package is

   package ArtificialIntelligence_Package renames Standard.org.allbinary.ai.ArtificialIntelligence_Package;
   package ArtificialIntelligenceTransitionInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceTransitionInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype ArtificialIntelligenceInterface_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   function "=" (Left, Right : GameInput_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
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
        artificialIntelligenceInterface := ArtificialIntelligenceInterface_Access (SequenceAI'Class (This).getSelectedArtificialIntelligenceInterface);
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
        stringBuffer.append (ArrayAI_Package.ArrayAI (This).toString);
        stringBuffer.append (To_Unbounded_String (" Selected AI: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (SequenceAI'Class (This).getSelectedArtificialIntelligenceInterface));
        return stringBuffer.toString;
   end toString;

begin
   null;
   SEQUENCE_AI := To_Unbounded_String ("Sequence AI");

end org.allbinary.game.ag.ai.sequence.SequenceAI_Package;


