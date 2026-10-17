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


package body org.allbinary.game.collision.LayerCollisionUtil_Package is

   procedure Initialize_Fields (This : in out LayerCollisionUtil'Class) is
   begin
      null;
      This.collisionProcessor := null;
   end Initialize_Fields;


   function getInstance return LayerCollisionUtil_Access is
   begin
        return LayerCollisionUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LayerCollisionUtil'Class) is
      features : Features_Access;
      gameFeatureFactory : GameFeatureFactory_Access;
   begin
      Initialize_Fields (This);
        features := Features_Package.getInstance;
        gameFeatureFactory := GameFeatureFactory_Package.getInstance;
        if (OpenGLFeatureUtil_Package.getInstance.isAnyThreed) and then (not (features.isFeature (gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL))) then
            This.collisionProcessor := CollisionThreedProcessor_Package.Create;
        else
            This.collisionProcessor := Collision2DProcessor_Package.Create;
        end if;
   end Initialize;

   function Create return LayerCollisionUtil_Access is
      This : constant LayerCollisionUtil_Access := new LayerCollisionUtil;
   begin
      LayerCollisionUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isCollision (This : in out LayerCollisionUtil; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) return Boolean is
   begin
        return This.collisionProcessor.isCollision (myLayer, myLayer2);
   end isCollision;

   procedure isCollision (This : in out LayerCollisionUtil; myLayer : AllBinaryLayer_Access; myLayer2 : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := LayerCollisionUtil'Class (This).isCollision (myLayer, myLayer2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

begin
   null;
   instance := LayerCollisionUtil_Package.Create;

end org.allbinary.game.collision.LayerCollisionUtil_Package;


