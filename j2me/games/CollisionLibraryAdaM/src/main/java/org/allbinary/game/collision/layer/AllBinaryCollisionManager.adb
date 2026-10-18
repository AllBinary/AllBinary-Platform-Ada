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


with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;

package body org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package is

   package CollidableBaseBehavior_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   procedure Initialize_Fields (This : in out AllBinaryCollisionManager'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryCollisionManager'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryCollisionManager_Access is
      This : constant AllBinaryCollisionManager_Access := new AllBinaryCollisionManager;
   begin
      AllBinaryCollisionManager_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AllBinaryCollisionManager_Access is
   begin
        return AllBinaryCollisionManager_Package.allBinaryCollisionManager_Var;
   end getInstance;

   --  throws Exception
   procedure process (This : in out AllBinaryCollisionManager; layerManager_Param : access LayerManager_Package.LayerManager'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class; startIndex : Integer) is
      layerManager : constant LayerManager_Access := LayerManager_Access (layerManager_Param);
      collidableInterfaceCompositeInterface : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
      size : Integer;
      collidableInterfaceCompositeInterface2 : CollidableInterfaceCompositeInterface_Access;
      index : Integer;
   begin
        size := layerManager.getSize;
        for index in (startIndex) + (1) .. (size) - 1 loop
            collidableInterfaceCompositeInterface2 := CollidableInterfaceCompositeInterface_Access (layerManager.getLayerAt (index));
            AllBinaryCollisionManager'Class (This).collide (layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
        end loop;
   end process;

   --  throws Exception
   procedure collide (This : in out AllBinaryCollisionManager; layerManager_Param : access LayerManager_Package.LayerManager'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class; collidableInterfaceCompositeInterface2_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) is
      layerManager : constant LayerManager_Access := LayerManager_Access (layerManager_Param);
      collidableInterfaceCompositeInterface : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
      collidableInterfaceCompositeInterface2 : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface2_Param);
      collidableBase2 : CollidableBaseBehavior_Access;
      collidableBase : CollidableBaseBehavior_Access;
   begin
        collidableBase2 := collidableInterfaceCompositeInterface2.getCollidableInferface;
        collidableBase := collidableInterfaceCompositeInterface.getCollidableInferface;
        if collidableBase2.isCollidable (CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface)) then
            if collidableBase.isCollisionInterface (CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2) then
                collidableBase.collideInterface (CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface2);
                collidableBase2.collideInterface (CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface), collidableInterfaceCompositeInterface);
            end if;
        end if;
   end collide;

begin
   null;
   allBinaryCollisionManager_Var := AllBinaryCollisionManager_Package.Create;

end org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package;


