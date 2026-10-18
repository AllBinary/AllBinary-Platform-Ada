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


with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.layer.CollidableInterfaceLayerManager_Package; use org.allbinary.game.collision.layer.CollidableInterfaceLayerManager_Package;
with org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package; use org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package;

package body org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package is

   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
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
   procedure processAt (This : in out CollidableInterfaceLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access;
   begin
        collidableInterfaceCompositeInterface := CollidableInterfaceCompositeInterface_Access (layerInterface);
        if collidableInterfaceCompositeInterface.getCollidableInferface.isCollidable (CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface)) then
            AllBinaryCollisionManager_Package.getInstance.process (CollidableInterfaceLayerProcessor'Class (This).getLayerManager, collidableInterfaceCompositeInterface, index);
        end if;
   end processAt;

   function isProcessorLayer (This : in out CollidableInterfaceLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if layerInterface.implmentsCollidableInterface then
            return True;
        else
            return False;
        end if;
   end isProcessorLayer;

   procedure isProcessorLayer (This : in out CollidableInterfaceLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := CollidableInterfaceLayerProcessor'Class (This).isProcessorLayer (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package;


