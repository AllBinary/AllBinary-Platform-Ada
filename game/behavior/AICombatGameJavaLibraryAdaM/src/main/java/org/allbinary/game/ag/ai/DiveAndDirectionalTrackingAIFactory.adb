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


with org.allbinary.ai.ArtificialIntelligenceInterface_Package; use org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;
with org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package; use org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package; use org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package; use org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;
with org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package; use org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;
with org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package; use org.allbinary.game.ag.ai.LastKeyAIVisitorFactory_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package; use org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;
with org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;
with org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI_Package;
with org.allbinary.game.ag.ai.ThrustAIVisitor_Package;
with org.allbinary.game.ag.ai.ThrustAIVisitorFactory_Package;

package body org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package is

   package BasicRandomAIFactory_Package renames Standard.org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
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
        artificialIntelligenceInterface := ArtificialIntelligenceInterface_Access (BasicRandomAIFactory_Package.Create.getInstance (hashtable2, ownerLayerInterface, gameInput));
        return ArtificialIntelligenceInterface_Access (DiveAndDirectionalTrackingAI_Package.Create (ownerLayerInterface, artificialIntelligenceInterface, gameInput, Visitor_Access (visitorCanBeNull)));
   end getInstance;

   procedure getInstance (This : in out DiveAndDirectionalTrackingAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := DiveAndDirectionalTrackingAIFactory'Class (This).getInstance (hashtable_Param => hashtable_Param, ownerLayerInterface_Param => ownerLayerInterface_Param, gameInput_Param => gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory_Package;


