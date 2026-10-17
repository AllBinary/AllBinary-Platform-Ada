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


package body org.allbinary.game.tick.TickableLayerProcessor_Package is

   procedure Initialize_Fields (This : in out TickableLayerProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TickableLayerProcessor'Class) is
   begin
        LayerProcessor_Package.Initialize (This, TickableLayerManager_Package.Create);
   end Initialize;

   function Create return TickableLayerProcessor_Access is
      This : constant TickableLayerProcessor_Access := new TickableLayerProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out TickableLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access; layerInterface : AllBinaryLayer_Access; index : Integer) is
      tickableInterface : TickableInterface_Access;
   begin
        tickableInterface := TickableInterface_Access (layerInterface);
        tickableInterface.processTick (allBinaryLayerManager);
   end processAt;

   function isProcessorLayer (This : in out TickableLayerProcessor; layerInterface : AllBinaryLayer_Access) return Boolean is
   begin
        if layerInterface.implmentsTickableInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out TickableLayerProcessor; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := TickableLayerProcessor'Class (This).isProcessorLayer (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.game.tick.TickableLayerProcessor_Package;


