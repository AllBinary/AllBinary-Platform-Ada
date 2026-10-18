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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;

package org.allbinary.game.layer.waypoint.CollidableWaypointBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;

   type CollidableWaypointBehavior is tagged;
   type CollidableWaypointBehavior_Access is access all CollidableWaypointBehavior'Class;
   type CollidableWaypointBehavior_Access_Array is array (Natural range <>) of CollidableWaypointBehavior_Access;
   type CollidableWaypointBehavior_Access_Array_Access is access all CollidableWaypointBehavior_Access_Array;
   type CollidableWaypointBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableWaypointBehavior_Access_Array_Access;
   type CollidableWaypointBehavior_Access_Array_Access_Array_Access is access all CollidableWaypointBehavior_Access_Array_Access_Array;

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


