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
limited with org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package;
package org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References is
   type AllBinaryCollisionManager_Access is access all org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package.AllBinaryCollisionManager'Class;
   type AllBinaryCollisionManager_Access_Array is array (Natural range <>) of AllBinaryCollisionManager_Access;
   type AllBinaryCollisionManager_Access_Array_Access is access all AllBinaryCollisionManager_Access_Array;
   type AllBinaryCollisionManager_Access_Array_Access_Array is array (Natural range <>) of AllBinaryCollisionManager_Access_Array_Access;
   type AllBinaryCollisionManager_Access_Array_Access_Array_Access is access all AllBinaryCollisionManager_Access_Array_Access_Array;
   type AllBinaryCollisionManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryCollisionManager_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryCollisionManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryCollisionManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryCollisionManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryCollisionManager_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryCollisionManager_Access_Array_Object'Class then AllBinaryCollisionManager_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryCollisionManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryCollisionManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryCollisionManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryCollisionManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryCollisionManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryCollisionManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryCollisionManager_Access_Array_Access_Array_Object'Class then AllBinaryCollisionManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References;

with org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;
limited with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;

package org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package is

   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package LayerManager_Package renames Standard.org.allbinary.layer.LayerManager_Package;
   package Reference_Types is
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
   subtype LayerManager_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access;
   use type LayerManager_Access;
   subtype LayerManager_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array;
   use type LayerManager_Access_Array;
   subtype LayerManager_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access;
   use type LayerManager_Access_Array_Access;
   subtype LayerManager_Access_Array_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array;
   use type LayerManager_Access_Array_Access_Array;
   subtype LayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array_Access;
   use type LayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryCollisionManager_Access is org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.AllBinaryCollisionManager_Access;
   function "=" (Left, Right : AllBinaryCollisionManager_Access) return Boolean renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References."=";
   subtype AllBinaryCollisionManager_Access_Array is org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.AllBinaryCollisionManager_Access_Array;
   function "=" (Left, Right : AllBinaryCollisionManager_Access_Array) return Boolean renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References."=";
   subtype AllBinaryCollisionManager_Access_Array_Access is org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.AllBinaryCollisionManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryCollisionManager_Access_Array_Access) return Boolean renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References."=";
   function Java_Box (Value : AllBinaryCollisionManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.Java_Box;
   function Java_Unbox_AllBinaryCollisionManager_Access_Array (Value : access Java_Object'Class) return AllBinaryCollisionManager_Access_Array_Access renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.Java_Unbox_AllBinaryCollisionManager_Access_Array;
   subtype AllBinaryCollisionManager_Access_Array_Access_Array is org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.AllBinaryCollisionManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryCollisionManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References."=";
   subtype AllBinaryCollisionManager_Access_Array_Access_Array_Access is org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.AllBinaryCollisionManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryCollisionManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References."=";
   function Java_Box (Value : AllBinaryCollisionManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.Java_Box;
   function Java_Unbox_AllBinaryCollisionManager_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryCollisionManager_Access_Array_Access_Array_Access renames org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package_References.Java_Unbox_AllBinaryCollisionManager_Access_Array_Access_Array;

   type AllBinaryCollisionManager is new Java_Object with null record;
   allBinaryCollisionManager_Var : AllBinaryCollisionManager_Access;

   procedure Initialize (This : in out AllBinaryCollisionManager'Class);
   function Create return AllBinaryCollisionManager_Access;
   function getInstance return AllBinaryCollisionManager_Access;
   procedure process (This : in out AllBinaryCollisionManager; layerManager_Param : access LayerManager_Package.LayerManager'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class; startIndex : Integer);
   procedure collide (This : in out AllBinaryCollisionManager; layerManager_Param : access LayerManager_Package.LayerManager'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class; collidableInterfaceCompositeInterface2_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);

end org.allbinary.game.collision.layer.AllBinaryCollisionManager_Package;


