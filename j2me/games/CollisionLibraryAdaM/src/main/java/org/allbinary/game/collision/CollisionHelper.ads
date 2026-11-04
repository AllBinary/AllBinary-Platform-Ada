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

limited with org.allbinary.game.collision.CollisionHelper_Package;
package org.allbinary.game.collision.CollisionHelper_Package_References is
   type CollisionHelper_Access is access all org.allbinary.game.collision.CollisionHelper_Package.CollisionHelper'Class;
   type CollisionHelper_Access_Array is array (Natural range <>) of CollisionHelper_Access;
   type CollisionHelper_Access_Array_Access is access all CollisionHelper_Access_Array;
   type CollisionHelper_Access_Array_Access_Array is array (Natural range <>) of CollisionHelper_Access_Array_Access;
   type CollisionHelper_Access_Array_Access_Array_Access is access all CollisionHelper_Access_Array_Access_Array;
end org.allbinary.game.collision.CollisionHelper_Package_References;

with org.allbinary.game.collision.CollisionHelper_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.game.collision.CollisionHelper_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype CollisionHelper_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access;
   function "=" (Left, Right : CollisionHelper_Access) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array;
   function "=" (Left, Right : CollisionHelper_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access;
   function "=" (Left, Right : CollisionHelper_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";
   subtype CollisionHelper_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionHelper_Package_References."=";

   type CollisionHelper is new Java_Object with record
      sourceLayerInterface : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out CollisionHelper'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function Create (sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionHelper_Access;
   function isCollidable (This : in out CollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollidable (This : in out CollisionHelper; layerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function getOwnerLayerInterface (This : in out CollisionHelper) return AllBinaryLayer_Access;
   procedure setOwnerLayerInterface (This : in out CollisionHelper; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.CollisionHelper_Package;


