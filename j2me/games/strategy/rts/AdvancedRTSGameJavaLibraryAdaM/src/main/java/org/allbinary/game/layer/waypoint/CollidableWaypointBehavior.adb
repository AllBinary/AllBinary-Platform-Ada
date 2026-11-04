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


with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;

package body org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package is

   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableCompositeLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableCompositeLayer_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References."=";
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

   function isCollision (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collisionLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collisionLayer_Param);
   begin
        return False;
   end isCollision;

   --  throws Exception
   procedure collide (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collisionLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collisionLayer_Param);
   begin
        null;
   end collide;

   function isCollisionInterface (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterface : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterface_Param);
   begin
        return False;
   end isCollisionInterface;

   --  throws Exception
   procedure collideInterface (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterface : constant CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterface_Param);
   begin
        null;
   end collideInterface;

   procedure isCollision (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      Java_Result : constant Boolean := CollidableWaypointBehavior'Class (This).isCollision (ownerLayer_Param => ownerLayer_Param, collisionLayer_Param => collisionLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) is
      Java_Result : constant Boolean := CollidableWaypointBehavior'Class (This).isCollisionInterface (ownerLayer_Param => ownerLayer_Param, collidableInterface_Param => collidableInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

end org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package;


