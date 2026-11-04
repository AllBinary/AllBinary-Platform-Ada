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

limited with org.allbinary.game.collision.CollisionTypeFactory_Package;
package org.allbinary.game.collision.CollisionTypeFactory_Package_References is
   type CollisionTypeFactory_Access is access all org.allbinary.game.collision.CollisionTypeFactory_Package.CollisionTypeFactory'Class;
   type CollisionTypeFactory_Access_Array is array (Natural range <>) of CollisionTypeFactory_Access;
   type CollisionTypeFactory_Access_Array_Access is access all CollisionTypeFactory_Access_Array;
   type CollisionTypeFactory_Access_Array_Access_Array is array (Natural range <>) of CollisionTypeFactory_Access_Array_Access;
   type CollisionTypeFactory_Access_Array_Access_Array_Access is access all CollisionTypeFactory_Access_Array_Access_Array;
end org.allbinary.game.collision.CollisionTypeFactory_Package_References;

with org.allbinary.game.collision.CollisionTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionType_Package_References;

package org.allbinary.game.collision.CollisionTypeFactory_Package is

   package Reference_Types is
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


   subtype CollisionTypeFactory_Access is org.allbinary.game.collision.CollisionTypeFactory_Package_References.CollisionTypeFactory_Access;
   function "=" (Left, Right : CollisionTypeFactory_Access) return Boolean renames org.allbinary.game.collision.CollisionTypeFactory_Package_References."=";
   subtype CollisionTypeFactory_Access_Array is org.allbinary.game.collision.CollisionTypeFactory_Package_References.CollisionTypeFactory_Access_Array;
   function "=" (Left, Right : CollisionTypeFactory_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionTypeFactory_Package_References."=";
   subtype CollisionTypeFactory_Access_Array_Access is org.allbinary.game.collision.CollisionTypeFactory_Package_References.CollisionTypeFactory_Access_Array_Access;
   function "=" (Left, Right : CollisionTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionTypeFactory_Package_References."=";
   subtype CollisionTypeFactory_Access_Array_Access_Array is org.allbinary.game.collision.CollisionTypeFactory_Package_References.CollisionTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionTypeFactory_Package_References."=";
   subtype CollisionTypeFactory_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionTypeFactory_Package_References.CollisionTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionTypeFactory_Package_References."=";

   type CollisionTypeFactory is new Java_Object with record
      NONE : CollisionType_Access;
      DAMAGE : CollisionType_Access;
      PICKUP : CollisionType_Access;
      COLLISION : CollisionType_Access;
   end record;
   SINGLETON : CollisionTypeFactory_Access;

   procedure Initialize (This : in out CollisionTypeFactory'Class);
   function Create return CollisionTypeFactory_Access;
   function getInstance return CollisionTypeFactory_Access;

end org.allbinary.game.collision.CollisionTypeFactory_Package;


