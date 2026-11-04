-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
package org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References is
   type CollidableBaseBehaviorFactory_Access is access all org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package.CollidableBaseBehaviorFactory'Class;
   type CollidableBaseBehaviorFactory_Access_Array is array (Natural range <>) of CollidableBaseBehaviorFactory_Access;
   type CollidableBaseBehaviorFactory_Access_Array_Access is access all CollidableBaseBehaviorFactory_Access_Array;
   type CollidableBaseBehaviorFactory_Access_Array_Access_Array is array (Natural range <>) of CollidableBaseBehaviorFactory_Access_Array_Access;
   type CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access is access all CollidableBaseBehaviorFactory_Access_Array_Access_Array;
end org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References;

with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package; use org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package;
limited with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;

package org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package is

   package Reference_Types is
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


   subtype CollidableBaseBehaviorFactory_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";
   subtype CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References.CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package_References."=";

   type CollidableBaseBehaviorFactory is new Java_Object and CollidableBaseBehaviorFactoryInterface with null record;

   procedure Initialize (This : in out CollidableBaseBehaviorFactory'Class);
   function Create return CollidableBaseBehaviorFactory_Access;
   function createBehavior (This : in out CollidableBaseBehaviorFactory) return CollidableBaseBehavior_Access;

end org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;


