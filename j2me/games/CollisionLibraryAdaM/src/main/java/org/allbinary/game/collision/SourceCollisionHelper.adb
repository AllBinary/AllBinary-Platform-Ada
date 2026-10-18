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



package body org.allbinary.game.collision.SourceCollisionHelper_Package is

   procedure Initialize_Fields (This : in out SourceCollisionHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SourceCollisionHelper'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        CollisionHelper_Package.Initialize (This, layerInterface);
   end Initialize;

   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return SourceCollisionHelper_Access is
      This : constant SourceCollisionHelper_Access := new SourceCollisionHelper;
   begin
      SourceCollisionHelper_Package.Initialize (This.all, layerInterface_Param);
      return This;
   end Create;

   function isCollidable (This : in out SourceCollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is
      layerInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (layerInterface_Param);
   begin
        if (This.sourceLayerInterface) /= (layerInterface) then
            return True;
        end if;
        return False;
   end isCollidable;

   procedure isCollidable (This : in out SourceCollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      Java_Result : constant Boolean := SourceCollisionHelper'Class (This).isCollidable (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollidable;

end org.allbinary.game.collision.SourceCollisionHelper_Package;


