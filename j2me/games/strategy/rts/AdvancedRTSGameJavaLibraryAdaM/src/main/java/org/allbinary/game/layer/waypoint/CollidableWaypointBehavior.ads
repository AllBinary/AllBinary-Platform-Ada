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

limited with org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package;
package org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References is
   type CollidableWaypointBehavior_Access is access all org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package.CollidableWaypointBehavior'Class;
   type CollidableWaypointBehavior_Access_Array is array (Natural range <>) of CollidableWaypointBehavior_Access;
   type CollidableWaypointBehavior_Access_Array_Access is access all CollidableWaypointBehavior_Access_Array;
   type CollidableWaypointBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableWaypointBehavior_Access_Array_Access;
   type CollidableWaypointBehavior_Access_Array_Access_Array_Access is access all CollidableWaypointBehavior_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References;

with org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;

package org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package Reference_Types is
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   subtype CollidableInterfaceCompositeInterface_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access;
   use type CollidableInterfaceCompositeInterface_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableWaypointBehavior_Access is org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References.CollidableWaypointBehavior_Access;
   function "=" (Left, Right : CollidableWaypointBehavior_Access) return Boolean renames org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References."=";
   subtype CollidableWaypointBehavior_Access_Array is org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References.CollidableWaypointBehavior_Access_Array;
   function "=" (Left, Right : CollidableWaypointBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References."=";
   subtype CollidableWaypointBehavior_Access_Array_Access is org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References.CollidableWaypointBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableWaypointBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References."=";
   subtype CollidableWaypointBehavior_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References.CollidableWaypointBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableWaypointBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References."=";
   subtype CollidableWaypointBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References.CollidableWaypointBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableWaypointBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package_References."=";

   type CollidableWaypointBehavior is new CollidableRTSBehavior with null record;

   procedure Initialize (This : in out CollidableWaypointBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableWaypointBehavior_Access;
   function isCollision (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function isCollisionInterface (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean;
   procedure isCollisionInterface (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   procedure collideInterface (This : in out CollidableWaypointBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);

end org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package;


