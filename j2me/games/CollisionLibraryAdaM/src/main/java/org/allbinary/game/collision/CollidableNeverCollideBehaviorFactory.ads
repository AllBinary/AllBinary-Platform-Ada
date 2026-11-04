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

limited with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
package org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References is
   type CollidableNeverCollideBehaviorFactory_Access is access all org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package.CollidableNeverCollideBehaviorFactory'Class;
   type CollidableNeverCollideBehaviorFactory_Access_Array is array (Natural range <>) of CollidableNeverCollideBehaviorFactory_Access;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access is access all CollidableNeverCollideBehaviorFactory_Access_Array;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array is array (Natural range <>) of CollidableNeverCollideBehaviorFactory_Access_Array_Access;
   type CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access is access all CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array;
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
   subtype CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array is org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References."=";
   subtype CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References.CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableNeverCollideBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package_References."=";

   type CollidableNeverCollideBehaviorFactory is new CollidableBaseBehaviorFactory with record
      instance : CollidableNeverCollideBehavior_Access;
   end record;
   instanceC : CollidableNeverCollideBehaviorFactory_Access;

   procedure Initialize (This : in out CollidableNeverCollideBehaviorFactory'Class);
   function Create return CollidableNeverCollideBehaviorFactory_Access;
   function getInstance return CollidableNeverCollideBehaviorFactory_Access;
   function createBehavior (This : in out CollidableNeverCollideBehaviorFactory) return CollidableBaseBehavior_Access;

end org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;


