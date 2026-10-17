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


package body org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package is

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
   function getInstance (This : in out DiveAndDirectionalTrackingAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access is
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
        return DiveAndDirectionalTrackingAI_Package.Create (ownerLayerInterface, artificialIntelligenceInterface, gameInput, Visitor_Access (visitorCanBeNull));
   end getInstance;

   procedure getInstance (This : in out DiveAndDirectionalTrackingAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := DiveAndDirectionalTrackingAIFactory'Class (This).getInstance (hashtable, ownerLayerInterface, gameInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package;


