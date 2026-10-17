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


   procedure Initialize (This : in out CollisionHelper'Class; sourceLayerInterface : AllBinaryLayer_Access) is
   begin
      Initialize_Fields (This);
        This.sourceLayerInterface := sourceLayerInterface;
   end Initialize;

   function Create (sourceLayerInterface : AllBinaryLayer_Access) return CollisionHelper_Access is
      This : constant CollisionHelper_Access := new CollisionHelper;
   begin
      Initialize (This.all, sourceLayerInterface);
      return This;
   end Create;

   function isCollidable (This : in out CollisionHelper; layerInterface : CollidableCompositeLayer_Access) return Boolean is
   begin
        return True;
   end isCollidable;

   function getOwnerLayerInterface (This : in out CollisionHelper) return AllBinaryLayer_Access is
   begin
        return This.sourceLayerInterface;
   end getOwnerLayerInterface;

   procedure setOwnerLayerInterface (This : in out CollisionHelper; sourceLayerInterface : AllBinaryLayer_Access) is
   begin
        This.sourceLayerInterface := sourceLayerInterface;
   end setOwnerLayerInterface;

   procedure isCollidable (This : in out CollisionHelper; layerInterface : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollisionHelper'Class (This).isCollidable (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollidable;

   procedure getOwnerLayerInterface (This : in out CollisionHelper) is
      Java_Result : constant AllBinaryLayer_Access := CollisionHelper'Class (This).getOwnerLayerInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOwnerLayerInterface;

end org.allbinary.game.collision.CollisionHelper_Package;


