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

limited with org.allbinary.game.collision.LayerCollisionUtil_Package;
package org.allbinary.game.collision.LayerCollisionUtil_Package_References is
   type LayerCollisionUtil_Access is access all org.allbinary.game.collision.LayerCollisionUtil_Package.LayerCollisionUtil'Class;
   type LayerCollisionUtil_Access_Array is array (Natural range <>) of LayerCollisionUtil_Access;
   type LayerCollisionUtil_Access_Array_Access is access all LayerCollisionUtil_Access_Array;
   type LayerCollisionUtil_Access_Array_Access_Array is array (Natural range <>) of LayerCollisionUtil_Access_Array_Access;
   type LayerCollisionUtil_Access_Array_Access_Array_Access is access all LayerCollisionUtil_Access_Array_Access_Array;
end org.allbinary.game.collision.LayerCollisionUtil_Package_References;

with org.allbinary.game.collision.LayerCollisionUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionProcessor_Package_References;

package org.allbinary.game.collision.LayerCollisionUtil_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype CollisionProcessor_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access;
   use type CollisionProcessor_Access;
   subtype CollisionProcessor_Access_Array is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array;
   use type CollisionProcessor_Access_Array;
   subtype CollisionProcessor_Access_Array_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access;
   use type CollisionProcessor_Access_Array_Access;
   subtype CollisionProcessor_Access_Array_Access_Array is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access_Array;
   use type CollisionProcessor_Access_Array_Access_Array;
   subtype CollisionProcessor_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionProcessor_Package_References.CollisionProcessor_Access_Array_Access_Array_Access;
   use type CollisionProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerCollisionUtil_Access is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access;
   function "=" (Left, Right : LayerCollisionUtil_Access) return Boolean renames org.allbinary.game.collision.LayerCollisionUtil_Package_References."=";
   subtype LayerCollisionUtil_Access_Array is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array;
   function "=" (Left, Right : LayerCollisionUtil_Access_Array) return Boolean renames org.allbinary.game.collision.LayerCollisionUtil_Package_References."=";
   subtype LayerCollisionUtil_Access_Array_Access is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array_Access;
   function "=" (Left, Right : LayerCollisionUtil_Access_Array_Access) return Boolean renames org.allbinary.game.collision.LayerCollisionUtil_Package_References."=";
   subtype LayerCollisionUtil_Access_Array_Access_Array is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerCollisionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.LayerCollisionUtil_Package_References."=";
   subtype LayerCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerCollisionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.LayerCollisionUtil_Package_References."=";

   type LayerCollisionUtil is new Java_Object with record
      collisionProcessor : CollisionProcessor_Access;
   end record;
   instance : LayerCollisionUtil_Access;

   procedure Initialize (This : in out LayerCollisionUtil'Class);
   function Create return LayerCollisionUtil_Access;
   function getInstance return LayerCollisionUtil_Access;
   function isCollision (This : in out LayerCollisionUtil; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isCollision (This : in out LayerCollisionUtil; myLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; myLayer2_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.LayerCollisionUtil_Package;


