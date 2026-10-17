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


package body org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Package is

   procedure Initialize_Fields (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer'Class) is
   begin
        LayerProcessor_Package.Initialize (This, OptimizedAllBinaryCollisionLayerManager_Package.Create);
   end Initialize;

   function Create return OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access is
      This : constant OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access := new OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer;
   begin
      OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer'Class; startIndex : Integer) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access;
      collidableBase : CollidableBaseBehavior_Access;
      layerManager : LayerManager_Access;
      size : Integer;
      collidableInterfaceCompositeInterface2 : CollidableCompositeLayer_Access;
      collidableBase2 : CollidableBaseBehavior_Access;
      index : Integer;
   begin
        collidableInterfaceCompositeInterface := CollidableCompositeLayer_Access (layerInterface);
        collidableBase := collidableInterfaceCompositeInterface.getCollidableInferface;
        if collidableBase.isCollidable (collidableInterfaceCompositeInterface) then
            layerManager := This.getLayerManager;
            size := layerManager.getSize;
            collidableInterfaceCompositeInterface2 := null;
            collidableBase2 := null;
            for index in (startIndex) + (1) .. (size) - 1 loop
                collidableInterfaceCompositeInterface2 := CollidableCompositeLayer_Access (layerManager.getLayerAt (index));
                collidableBase2 := collidableInterfaceCompositeInterface2.getCollidableInferface;
                if (collidableBase2.isCollidable (collidableInterfaceCompositeInterface)) and then (collidableBase.isCollision (collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)) then
                    collidableBase.collide (collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
                    collidableBase2.collide (collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface);
                end if;
            end loop;
        end if;
   end processAt;

   function isProcessorLayer (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer; layerInterface_Param : access AllBinaryLayer'Class) return Boolean is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if layerInterface.implmentsCollidableInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer; layerInterface_Param : access AllBinaryLayer'Class) is
      Java_Result : constant Boolean := OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer'Class (This).isProcessorLayer (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Package;


