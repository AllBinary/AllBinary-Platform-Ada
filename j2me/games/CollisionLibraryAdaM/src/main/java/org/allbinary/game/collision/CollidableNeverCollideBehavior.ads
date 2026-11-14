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
limited with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
package org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References is
   type CollidableNeverCollideBehavior_Access is access all org.allbinary.game.collision.CollidableNeverCollideBehavior_Package.CollidableNeverCollideBehavior'Class;
   type CollidableNeverCollideBehavior_Access_Array is array (Natural range <>) of CollidableNeverCollideBehavior_Access;
   type CollidableNeverCollideBehavior_Access_Array_Access is access all CollidableNeverCollideBehavior_Access_Array;
   type CollidableNeverCollideBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableNeverCollideBehavior_Access_Array_Access;
   type CollidableNeverCollideBehavior_Access_Array_Access_Array_Access is access all CollidableNeverCollideBehavior_Access_Array_Access_Array;
   type CollidableNeverCollideBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableNeverCollideBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableNeverCollideBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableNeverCollideBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableNeverCollideBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableNeverCollideBehavior_Access_Array_Access is (if Value /= null and then Value.all in CollidableNeverCollideBehavior_Access_Array_Object'Class then CollidableNeverCollideBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableNeverCollideBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableNeverCollideBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableNeverCollideBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableNeverCollideBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableNeverCollideBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableNeverCollideBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableNeverCollideBehavior_Access_Array_Access_Array_Object'Class then CollidableNeverCollideBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References;

with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References;
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
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;

package org.allbinary.game.collision.CollidableNeverCollideBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
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


   subtype CollidableNeverCollideBehavior_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableNeverCollideBehavior_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableNeverCollideBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   function Java_Box (Value : CollidableNeverCollideBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableNeverCollideBehavior_Access_Array (Value : access Java_Object'Class) return CollidableNeverCollideBehavior_Access_Array_Access renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.Java_Unbox_CollidableNeverCollideBehavior_Access_Array;
   subtype CollidableNeverCollideBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   subtype CollidableNeverCollideBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableNeverCollideBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References."=";
   function Java_Box (Value : CollidableNeverCollideBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableNeverCollideBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableNeverCollideBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.Java_Unbox_CollidableNeverCollideBehavior_Access_Array_Access_Array;

   type CollidableNeverCollideBehavior is new CollidableBaseBehavior with null record;

   procedure Initialize (This : in out CollidableNeverCollideBehavior'Class; isCollidable : Boolean);
   function Create (isCollidable : Boolean) return CollidableNeverCollideBehavior_Access;
   function isCollision (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; allbinaryCollidableLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; allbinaryCollidableLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; allbinaryCollidableLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collideInterface (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   function isCollisionInterface (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean;
   procedure isCollisionInterface (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);

end org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;


