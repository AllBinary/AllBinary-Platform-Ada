-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableWaypointBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableWaypointBehavior'Class; collidable : Boolean) is
   begin
        CollidableRTSBehavior_Package.Initialize (This, collidable);
   end Initialize;

   function Create (collidable : Boolean) return CollidableWaypointBehavior_Access is
      This : constant CollidableWaypointBehavior_Access := new CollidableWaypointBehavior;
   begin
      CollidableWaypointBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   function isCollision (This : in out CollidableWaypointBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) return Boolean is
   begin
        return False;
   end isCollision;

   --  throws Exception
   procedure collide (This : in out CollidableWaypointBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) is
   begin
        null;
   end collide;

   function isCollisionInterface (This : in out CollidableWaypointBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterface : CollidableInterfaceCompositeInterface_Access) return Boolean is
   begin
        return False;
   end isCollisionInterface;

   --  throws Exception
   procedure collideInterface (This : in out CollidableWaypointBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterface : CollidableInterfaceCompositeInterface_Access) is
   begin
        null;
   end collideInterface;

   procedure isCollision (This : in out CollidableWaypointBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollidableWaypointBehavior'Class (This).isCollision (ownerLayer, collisionLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableWaypointBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterface : CollidableInterfaceCompositeInterface_Access) is
      Java_Result : constant Boolean := CollidableWaypointBehavior'Class (This).isCollisionInterface (ownerLayer, collidableInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

end org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package;


