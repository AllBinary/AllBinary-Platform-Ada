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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.collision.CollisionProcessor_Package; use org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionProcessor_Package_References;
with org.allbinary.game.collision.Collision2DProcessor_Package; use org.allbinary.game.collision.Collision2DProcessor_Package;
with org.allbinary.game.collision.CollisionThreedProcessor_Package; use org.allbinary.game.collision.CollisionThreedProcessor_Package;
with org.allbinary.game.collision.Collision2DProcessor_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionThreedProcessor_Package;

package body org.allbinary.game.collision.LayerCollisionUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype CollisionProcessor_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access;
   function "=" (Left, Right : CollisionProcessor_Access) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   subtype CollisionProcessor_Access_Array is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array;
   function "=" (Left, Right : CollisionProcessor_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   subtype CollisionProcessor_Access_Array_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access;
   function "=" (Left, Right : CollisionProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   subtype CollisionProcessor_Access_Array_Access_Array is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   subtype CollisionProcessor_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionProcessor_Package_References."=";
   procedure Initialize_Fields (This : in out LayerCollisionUtil'Class) is
   begin
      null;
      This.collisionProcessor := null;
   end Initialize_Fields;


   function getInstance return LayerCollisionUtil_Access is
   begin
        return LayerCollisionUtil_Access (LayerCollisionUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out LayerCollisionUtil'Class) is
      features : Features_Access;
      gameFeatureFactory : GameFeatureFactory_Access;
   begin
      Initialize_Fields (This);
        features := Features_Package.getInstance;
        gameFeatureFactory := GameFeatureFactory_Package.getInstance;
        if (OpenGLFeatureUtil_Package.getInstance.isAnyThreed) and then (not (features.isFeature (gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL))) then
            This.collisionProcessor := CollisionProcessor_Access (CollisionThreedProcessor_Package.Create);
        else
            This.collisionProcessor := CollisionProcessor_Access (Collision2DProcessor_Package.Create);
        end if;
   end Initialize;

   function Create return LayerCollisionUtil_Access is
      This : constant LayerCollisionUtil_Access := new LayerCollisionUtil;
   begin
      LayerCollisionUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isCollision (This : in out LayerCollisionUtil; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is
      myLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer_Param);
      myLayer2 : constant AllBinaryLayer_Access := AllBinaryLayer_Access (myLayer2_Param);
   begin
        return This.collisionProcessor.isCollision (myLayer, myLayer2);
   end isCollision;

   procedure isCollision (This : in out LayerCollisionUtil; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant Boolean := LayerCollisionUtil'Class (This).isCollision (myLayer_Param => myLayer_Param, myLayer2_Param => myLayer2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

begin
   null;
   instance := LayerCollisionUtil_Package.Create;

end org.allbinary.game.collision.LayerCollisionUtil_Package;


