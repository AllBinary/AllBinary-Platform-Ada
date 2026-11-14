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
limited with org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package;
package org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References is
   type CollidableAlwaysPickupNeverCollideBehavior_Access is access all org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package.CollidableAlwaysPickupNeverCollideBehavior'Class;
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array is array (Natural range <>) of CollidableAlwaysPickupNeverCollideBehavior_Access;
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access is access all CollidableAlwaysPickupNeverCollideBehavior_Access_Array;
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access;
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access is access all CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array;
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableAlwaysPickupNeverCollideBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access is (if Value /= null and then Value.all in CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Object'Class then CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Object'Class then CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References;

with org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References;
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
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package; use org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
limited with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionType_Package_References;

package org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package is

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


   subtype CollidableAlwaysPickupNeverCollideBehavior_Access is org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.CollidableAlwaysPickupNeverCollideBehavior_Access;
   function "=" (Left, Right : CollidableAlwaysPickupNeverCollideBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References."=";
   subtype CollidableAlwaysPickupNeverCollideBehavior_Access_Array is org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.CollidableAlwaysPickupNeverCollideBehavior_Access_Array;
   function "=" (Left, Right : CollidableAlwaysPickupNeverCollideBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References."=";
   subtype CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References."=";
   function Java_Box (Value : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableAlwaysPickupNeverCollideBehavior_Access_Array (Value : access Java_Object'Class) return CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.Java_Unbox_CollidableAlwaysPickupNeverCollideBehavior_Access_Array;
   subtype CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References."=";
   subtype CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References."=";
   function Java_Box (Value : CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package_References.Java_Unbox_CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access_Array;

   type CollidableAlwaysPickupNeverCollideBehavior is new CollidableNeverCollideBehavior with null record;

   procedure Initialize (This : in out CollidableAlwaysPickupNeverCollideBehavior'Class);
   function Create return CollidableAlwaysPickupNeverCollideBehavior_Access;
   function getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package;


