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
limited with org.allbinary.game.collision.CollidableHelperFactory_Package;
package org.allbinary.game.collision.CollidableHelperFactory_Package_References is
   type CollidableHelperFactory_Access is access all org.allbinary.game.collision.CollidableHelperFactory_Package.CollidableHelperFactory'Class;
   type CollidableHelperFactory_Access_Array is array (Natural range <>) of CollidableHelperFactory_Access;
   type CollidableHelperFactory_Access_Array_Access is access all CollidableHelperFactory_Access_Array;
   type CollidableHelperFactory_Access_Array_Access_Array is array (Natural range <>) of CollidableHelperFactory_Access_Array_Access;
   type CollidableHelperFactory_Access_Array_Access_Array_Access is access all CollidableHelperFactory_Access_Array_Access_Array;
   type CollidableHelperFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableHelperFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableHelperFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableHelperFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableHelperFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableHelperFactory_Access_Array_Access is (if Value /= null and then Value.all in CollidableHelperFactory_Access_Array_Object'Class then CollidableHelperFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableHelperFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableHelperFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableHelperFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableHelperFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableHelperFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableHelperFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableHelperFactory_Access_Array_Access_Array_Object'Class then CollidableHelperFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollidableHelperFactory_Package_References;

with org.allbinary.game.collision.CollidableHelperFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.collision.CollisionHelper_Package;
with org.allbinary.game.collision.CollisionHelper_Package_References;

package org.allbinary.game.collision.CollidableHelperFactory_Package is

   package Reference_Types is
   subtype CollisionHelper_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access;
   use type CollisionHelper_Access;
   subtype CollisionHelper_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array;
   use type CollisionHelper_Access_Array;
   subtype CollisionHelper_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access;
   use type CollisionHelper_Access_Array_Access;
   subtype CollisionHelper_Access_Array_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array;
   use type CollisionHelper_Access_Array_Access_Array;
   subtype CollisionHelper_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array_Access;
   use type CollisionHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableHelperFactory_Access is org.allbinary.game.collision.CollidableHelperFactory_Package_References.CollidableHelperFactory_Access;
   function "=" (Left, Right : CollidableHelperFactory_Access) return Boolean renames org.allbinary.game.collision.CollidableHelperFactory_Package_References."=";
   subtype CollidableHelperFactory_Access_Array is org.allbinary.game.collision.CollidableHelperFactory_Package_References.CollidableHelperFactory_Access_Array;
   function "=" (Left, Right : CollidableHelperFactory_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableHelperFactory_Package_References."=";
   subtype CollidableHelperFactory_Access_Array_Access is org.allbinary.game.collision.CollidableHelperFactory_Package_References.CollidableHelperFactory_Access_Array_Access;
   function "=" (Left, Right : CollidableHelperFactory_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableHelperFactory_Package_References."=";
   function Java_Box (Value : CollidableHelperFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableHelperFactory_Package_References.Java_Box;
   function Java_Unbox_CollidableHelperFactory_Access_Array (Value : access Java_Object'Class) return CollidableHelperFactory_Access_Array_Access renames org.allbinary.game.collision.CollidableHelperFactory_Package_References.Java_Unbox_CollidableHelperFactory_Access_Array;
   subtype CollidableHelperFactory_Access_Array_Access_Array is org.allbinary.game.collision.CollidableHelperFactory_Package_References.CollidableHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableHelperFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableHelperFactory_Package_References."=";
   subtype CollidableHelperFactory_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableHelperFactory_Package_References.CollidableHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableHelperFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableHelperFactory_Package_References."=";
   function Java_Box (Value : CollidableHelperFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableHelperFactory_Package_References.Java_Box;
   function Java_Unbox_CollidableHelperFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableHelperFactory_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollidableHelperFactory_Package_References.Java_Unbox_CollidableHelperFactory_Access_Array_Access_Array;

   type CollidableHelperFactory is new Java_Object with null record;

   procedure Initialize (This : in out CollidableHelperFactory'Class);
   function Create return CollidableHelperFactory_Access;
   function getInstance return CollisionHelper_Access;

end org.allbinary.game.collision.CollidableHelperFactory_Package;


