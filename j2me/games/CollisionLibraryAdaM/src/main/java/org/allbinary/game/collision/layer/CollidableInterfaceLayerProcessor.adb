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


package body org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package is

   procedure Initialize_Fields (This : in out CollidableInterfaceLayerProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableInterfaceLayerProcessor'Class) is
   begin
        LayerProcessor_Package.Initialize (This, CollidableInterfaceLayerManager_Package.Create);
   end Initialize;

   function Create return CollidableInterfaceLayerProcessor_Access is
      This : constant CollidableInterfaceLayerProcessor_Access := new CollidableInterfaceLayerProcessor;
   begin
      CollidableInterfaceLayerProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out CollidableInterfaceLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access; layerInterface : AllBinaryLayer_Access; index : Integer) is
      collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access;
   begin
        collidableInterfaceCompositeInterface := CollidableInterfaceCompositeInterface_Access (layerInterface);
        if collidableInterfaceCompositeInterface.getCollidableInferface.isCollidable (CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface)) then
            AllBinaryCollisionManager_Package.getInstance.process (This.getLayerManager, collidableInterfaceCompositeInterface, index);
        end if;
   end processAt;

   function isProcessorLayer (This : in out CollidableInterfaceLayerProcessor; layerInterface : AllBinaryLayer_Access) return Boolean is
   begin
        if layerInterface.implmentsCollidableInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out CollidableInterfaceLayerProcessor; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := CollidableInterfaceLayerProcessor'Class (This).isProcessorLayer (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package;


