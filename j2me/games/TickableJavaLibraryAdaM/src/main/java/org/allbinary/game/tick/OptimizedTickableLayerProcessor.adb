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


package body org.allbinary.game.tick.OptimizedTickableLayerProcessor_Package is

   procedure Initialize_Fields (This : in out OptimizedTickableLayerProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OptimizedTickableLayerProcessor'Class) is
   begin
        LayerProcessor_Package.Initialize (This, OptimizedTickableLayerManager_Package.Create);
   end Initialize;

   function Create return OptimizedTickableLayerProcessor_Access is
      This : constant OptimizedTickableLayerProcessor_Access := new OptimizedTickableLayerProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out OptimizedTickableLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access; layerInterface : AllBinaryLayer_Access; index : Integer) is
      tickableInterface : AllBinaryGameLayer_Access;
   begin
        tickableInterface := AllBinaryGameLayer_Access (layerInterface);
        tickableInterface.processTick (allBinaryLayerManager);
   end processAt;

   function isProcessorLayer (This : in out OptimizedTickableLayerProcessor; layerInterface : AllBinaryLayer_Access) return Boolean is
   begin
        if layerInterface.implmentsTickableInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out OptimizedTickableLayerProcessor; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := OptimizedTickableLayerProcessor'Class (This).isProcessorLayer (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.game.tick.OptimizedTickableLayerProcessor_Package;


