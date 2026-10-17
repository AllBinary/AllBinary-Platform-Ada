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


package body org.allbinary.game.collision.CollisionHelper_Package is

   procedure Initialize_Fields (This : in out CollisionHelper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CollisionHelper'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
      Initialize_Fields (This);
        This.sourceLayerInterface := sourceLayerInterface;
   end Initialize;

   function Create (sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionHelper_Access is
      This : constant CollisionHelper_Access := new CollisionHelper;
   begin
      CollisionHelper_Package.Initialize (This.all, sourceLayerInterface_Param);
      return This;
   end Create;

   function isCollidable (This : in out CollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is
      layerInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (layerInterface_Param);
   begin
        return True;
   end isCollidable;

   function getOwnerLayerInterface (This : in out CollisionHelper) return AllBinaryLayer_Access is
   begin
        return This.sourceLayerInterface;
   end getOwnerLayerInterface;

   procedure setOwnerLayerInterface (This : in out CollisionHelper; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
        This.sourceLayerInterface := sourceLayerInterface;
   end setOwnerLayerInterface;

   procedure isCollidable (This : in out CollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      Java_Result : constant Boolean := CollisionHelper'Class (This).isCollidable (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollidable;

end org.allbinary.game.collision.CollisionHelper_Package;


