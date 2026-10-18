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


with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.ag.ai.InputProbability_Package; use org.allbinary.game.ag.ai.InputProbability_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package; use org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package;

package body org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package InputProbability_Package renames Standard.org.allbinary.game.ag.ai.InputProbability_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   procedure Initialize_Fields (This : in out BasicRandomAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicRandomAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicRandomAIFactory_Access is
      This : constant BasicRandomAIFactory_Access := new BasicRandomAIFactory;
   begin
      BasicRandomAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out BasicRandomAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      visitor : Visitor_Access;
      inputProbability : InputProbability_Access;
   begin
        visitor := Visitor_Access (hashtable.get (Java_Object_Access (BasicAI_Package.AI_VISITOR)));
        if (visitor) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Visitor Provided")));
        end if;
        inputProbability := InputProbability_Access (hashtable.get (Java_Object_Access (InputProbability_Package.INPUT_PROBABILITY)));
        return ArtificialIntelligenceInterface_Access (BasicRandomAI_Package.Create (ownerLayerInterface, gameInput, inputProbability, visitor));
   end getInstance;

   procedure getInstance (This : in out BasicRandomAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := BasicRandomAIFactory'Class (This).getInstance (hashtable_Param => hashtable_Param, ownerLayerInterface_Param => ownerLayerInterface_Param, gameInput_Param => gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;


