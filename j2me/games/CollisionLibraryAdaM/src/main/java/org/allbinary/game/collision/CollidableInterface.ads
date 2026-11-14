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

with AllBinary_Java;
limited with org.allbinary.game.collision.CollidableInterface_Package;
package org.allbinary.game.collision.CollidableInterface_Package_References is
   type CollidableInterface_Access is access all org.allbinary.game.collision.CollidableInterface_Package.CollidableInterface'Class;
   type CollidableInterface_Access_Array is array (Natural range <>) of CollidableInterface_Access;
   type CollidableInterface_Access_Array_Access is access all CollidableInterface_Access_Array;
   type CollidableInterface_Access_Array_Access_Array is array (Natural range <>) of CollidableInterface_Access_Array_Access;
   type CollidableInterface_Access_Array_Access_Array_Access is access all CollidableInterface_Access_Array_Access_Array;
   type CollidableInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableInterface_Access_Array_Access is (if Value /= null and then Value.all in CollidableInterface_Access_Array_Object'Class then CollidableInterface_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableInterface_Access_Array_Access_Array_Object'Class then CollidableInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollidableInterface_Package_References;

with org.allbinary.game.collision.CollidableInterface_Package_References;
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
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;
limited with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionType_Package_References;

package org.allbinary.game.collision.CollidableInterface_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package NamedInterface_Package renames Standard.org.allbinary.layer.NamedInterface_Package;
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
   subtype CollisionType_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access;
   use type CollisionType_Access;
   subtype CollisionType_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array;
   use type CollisionType_Access_Array;
   subtype CollisionType_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access;
   use type CollisionType_Access_Array_Access;
   subtype CollisionType_Access_Array_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array;
   use type CollisionType_Access_Array_Access_Array;
   subtype CollisionType_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array_Access;
   use type CollisionType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type CollidableInterface is interface and NamedInterface;
   subtype CollidableInterface_Access is org.allbinary.game.collision.CollidableInterface_Package_References.CollidableInterface_Access;
   function "=" (Left, Right : CollidableInterface_Access) return Boolean renames org.allbinary.game.collision.CollidableInterface_Package_References."=";
   subtype CollidableInterface_Access_Array is org.allbinary.game.collision.CollidableInterface_Package_References.CollidableInterface_Access_Array;
   function "=" (Left, Right : CollidableInterface_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterface_Package_References."=";
   subtype CollidableInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterface_Package_References.CollidableInterface_Access_Array_Access;
   function "=" (Left, Right : CollidableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterface_Package_References."=";
   function Java_Box (Value : CollidableInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableInterface_Package_References.Java_Box;
   function Java_Unbox_CollidableInterface_Access_Array (Value : access Java_Object'Class) return CollidableInterface_Access_Array_Access renames org.allbinary.game.collision.CollidableInterface_Package_References.Java_Unbox_CollidableInterface_Access_Array;
   subtype CollidableInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterface_Package_References.CollidableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableInterface_Package_References."=";
   subtype CollidableInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterface_Package_References.CollidableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableInterface_Package_References."=";
   function Java_Box (Value : CollidableInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableInterface_Package_References.Java_Box;
   function Java_Unbox_CollidableInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableInterface_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollidableInterface_Package_References.Java_Unbox_CollidableInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_CollidableInterface (Value : CollidableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isCollidable (This : in out CollidableInterface; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is abstract;
   procedure isCollidable (This : in out CollidableInterface; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is abstract;
   function isCollision (This : in out CollidableInterface; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean is abstract;
   procedure isCollision (This : in out CollidableInterface; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is abstract;
   procedure collide (This : in out CollidableInterface; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is abstract;
   function getCollisionTypeWith (This : in out CollidableInterface; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionType_Access is abstract;
   procedure getCollisionTypeWith (This : in out CollidableInterface; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is abstract;

end org.allbinary.game.collision.CollidableInterface_Package;


