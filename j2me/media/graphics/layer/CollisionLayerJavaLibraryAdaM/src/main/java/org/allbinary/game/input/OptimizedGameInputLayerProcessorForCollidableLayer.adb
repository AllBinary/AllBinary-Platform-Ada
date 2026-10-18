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


with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.game.input.OptimizedGameInputLayerManager_Package; use org.allbinary.game.input.OptimizedGameInputLayerManager_Package;

package body org.allbinary.game.input.OptimizedGameInputLayerProcessorForCollidableLayer_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   procedure Initialize_Fields (This : in out OptimizedGameInputLayerProcessorForCollidableLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OptimizedGameInputLayerProcessorForCollidableLayer'Class) is
   begin
        LayerProcessor_Package.Initialize (This, OptimizedGameInputLayerManager_Package.Create);
   end Initialize;

   function Create return OptimizedGameInputLayerProcessorForCollidableLayer_Access is
      This : constant OptimizedGameInputLayerProcessorForCollidableLayer_Access := new OptimizedGameInputLayerProcessorForCollidableLayer;
   begin
      OptimizedGameInputLayerProcessorForCollidableLayer_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out OptimizedGameInputLayerProcessorForCollidableLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      gameInputInterface : AllBinaryGameLayer_Access;
   begin
        gameInputInterface := AllBinaryGameLayer_Access (layerInterface);
        gameInputInterface.processInput (allBinaryLayerManager);
   end processAt;

   function isProcessorLayer (This : in out OptimizedGameInputLayerProcessorForCollidableLayer; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if layerInterface.implmentsGameInputInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out OptimizedGameInputLayerProcessorForCollidableLayer; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := OptimizedGameInputLayerProcessorForCollidableLayer'Class (This).isProcessorLayer (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.game.input.OptimizedGameInputLayerProcessorForCollidableLayer_Package;


