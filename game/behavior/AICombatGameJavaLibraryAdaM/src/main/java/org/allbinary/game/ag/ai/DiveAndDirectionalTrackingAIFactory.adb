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


with org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package; use org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package; use org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;
with org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package; use org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;
with org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package; use org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package; use org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;

package body org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package is

   package BasicRandomAIFactory_Package renames Standard.org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   procedure Initialize_Fields (This : in out DiveAndDirectionalTrackingAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DiveAndDirectionalTrackingAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DiveAndDirectionalTrackingAIFactory_Access is
      This : constant DiveAndDirectionalTrackingAIFactory_Access := new DiveAndDirectionalTrackingAIFactory;
   begin
      DiveAndDirectionalTrackingAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out DiveAndDirectionalTrackingAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      visitorCanBeNull : Java_Object_Access;
      hashtable2 : ABHashtable_Access;
      artificialIntelligenceInterface : ArtificialIntelligenceInterface_Access;
   begin
        visitorCanBeNull := hashtable.get (Java_Object_Access (BasicAI_Package.AI_VISITOR));
        if (visitorCanBeNull) = (null) then
            visitorCanBeNull := ThrustAIVisitorFactory_Package.getInstance;
        end if;
        hashtable2 := BasicProbabilityAIDataFactory_Package.Create.getInstance;
        hashtable2.put (BasicAI_Package.AI_VISITOR, LastKeyAIVisitorFactory_Package.getInstance);
        artificialIntelligenceInterface := BasicRandomAIFactory_Package.Create.getInstance (hashtable2, ownerLayerInterface, gameInput);
        return ArtificialIntelligenceInterface_Access (DiveAndDirectionalTrackingAI_Package.Create (ownerLayerInterface, artificialIntelligenceInterface, gameInput, Visitor_Access (visitorCanBeNull)));
   end getInstance;

   procedure getInstance (This : in out DiveAndDirectionalTrackingAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := DiveAndDirectionalTrackingAIFactory'Class (This).getInstance (hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package;


