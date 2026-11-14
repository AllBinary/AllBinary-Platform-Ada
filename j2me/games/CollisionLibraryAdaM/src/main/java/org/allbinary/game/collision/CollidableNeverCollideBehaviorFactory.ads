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
limited with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
package org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References is
   type CollidableNeverCollideBehaviorFactory_Access is access all org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package.CollidableNeverCollideBehaviorFactory'Class;
   type CollidableNeverCollideBehaviorFactory_Access_Array is array (Natural range <>) of CollidableNeverCollideBehaviorFactory_Access;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access is access all CollidableNeverCollideBehaviorFactory_Access_Array;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array is array (Natural range <>) of CollidableNeverCollideBehaviorFactory_Access_Array_Access;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access is access all CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableNeverCollideBehaviorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableNeverCollideBehaviorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableNeverCollideBehaviorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableNeverCollideBehaviorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableNeverCollideBehaviorFactory_Access_Array_Access is (if Value /= null and then Value.all in CollidableNeverCollideBehaviorFactory_Access_Array_Object'Class then CollidableNeverCollideBehaviorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Object'Class then CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References;

with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package; use org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
limited with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References;
limited with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;

package org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package is

   package Reference_Types is
   subtype CollidableNeverCollideBehavior_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access;
   use type CollidableNeverCollideBehavior_Access;
   subtype CollidableNeverCollideBehavior_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array;
   use type CollidableNeverCollideBehavior_Access_Array;
   subtype CollidableNeverCollideBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access;
   use type CollidableNeverCollideBehavior_Access_Array_Access;
   subtype CollidableNeverCollideBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access_Array;
   use type CollidableNeverCollideBehavior_Access_Array_Access_Array;
   subtype CollidableNeverCollideBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehavior_Package_References.CollidableNeverCollideBehavior_Access_Array_Access_Array_Access;
   use type CollidableNeverCollideBehavior_Access_Array_Access_Array_Access;
   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   use type CollidableBaseBehavior_Access;
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   use type CollidableBaseBehavior_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access;
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   use type CollidableBaseBehavior_Access_Array_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableNeverCollideBehaviorFactory_Access is org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.CollidableNeverCollideBehaviorFactory_Access;
   function "=" (Left, Right : CollidableNeverCollideBehaviorFactory_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References."=";
   subtype CollidableNeverCollideBehaviorFactory_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.CollidableNeverCollideBehaviorFactory_Access_Array;
   function "=" (Left, Right : CollidableNeverCollideBehaviorFactory_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References."=";
   subtype CollidableNeverCollideBehaviorFactory_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.CollidableNeverCollideBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : CollidableNeverCollideBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References."=";
   function Java_Box (Value : CollidableNeverCollideBehaviorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.Java_Box;
   function Java_Unbox_CollidableNeverCollideBehaviorFactory_Access_Array (Value : access Java_Object'Class) return CollidableNeverCollideBehaviorFactory_Access_Array_Access renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.Java_Unbox_CollidableNeverCollideBehaviorFactory_Access_Array;
   subtype CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References."=";
   subtype CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References."=";
   function Java_Box (Value : CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.Java_Box;
   function Java_Unbox_CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.Java_Unbox_CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array;

   type CollidableNeverCollideBehaviorFactory is new CollidableBaseBehaviorFactory with record
      instance : CollidableNeverCollideBehavior_Access;
   end record;
   instanceC : CollidableNeverCollideBehaviorFactory_Access;

   procedure Initialize (This : in out CollidableNeverCollideBehaviorFactory'Class);
   function Create return CollidableNeverCollideBehaviorFactory_Access;
   function getInstance return CollidableNeverCollideBehaviorFactory_Access;
   function createBehavior (This : in out CollidableNeverCollideBehaviorFactory) return CollidableBaseBehavior_Access;

end org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;


