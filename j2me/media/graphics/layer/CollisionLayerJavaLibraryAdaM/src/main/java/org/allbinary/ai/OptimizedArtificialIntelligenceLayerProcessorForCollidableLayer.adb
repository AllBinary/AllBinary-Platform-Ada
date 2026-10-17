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


package body org.allbinary.ai.OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer_Package is

   procedure Initialize_Fields (This : in out OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer'Class) is
   begin
        LayerProcessor_Package.Initialize (This, OptimizedArtificialIntelligenceLayerManager_Package.Create);
   end Initialize;

   function Create return OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer_Access is
      This : constant OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer_Access := new OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer; allBinaryLayerManager : AllBinaryLayerManager_Access; layerInterface : AllBinaryLayer_Access; index : Integer) is
      artificialIntelligenceCompositeInterface : CollidableCompositeLayer_Access;
   begin
        artificialIntelligenceCompositeInterface := CollidableCompositeLayer_Access (layerInterface);
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface.processAI (allBinaryLayerManager);
   end processAt;

   --  throws Exception
   function isProcessorLayer (This : in out OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer; layerInterface : AllBinaryLayer_Access) return Boolean is
   begin
        if layerInterface.implmentsArtificialIntelligenceCompositeInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer'Class (This).isProcessorLayer (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.ai.OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer_Package;


