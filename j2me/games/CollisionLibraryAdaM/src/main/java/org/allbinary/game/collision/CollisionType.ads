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

limited with org.allbinary.game.collision.CollisionType_Package;
package org.allbinary.game.collision.CollisionType_Package_References is
   type CollisionType_Access is access all org.allbinary.game.collision.CollisionType_Package.CollisionType'Class;
   type CollisionType_Access_Array is array (Natural range <>) of CollisionType_Access;
   type CollisionType_Access_Array_Access is access all CollisionType_Access_Array;
   type CollisionType_Access_Array_Access_Array is array (Natural range <>) of CollisionType_Access_Array_Access;
   type CollisionType_Access_Array_Access_Array_Access is access all CollisionType_Access_Array_Access_Array;
end org.allbinary.game.collision.CollisionType_Package_References;

with org.allbinary.game.collision.CollisionType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.collision.CollisionType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CollisionType_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access;
   function "=" (Left, Right : CollisionType_Access) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array;
   function "=" (Left, Right : CollisionType_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access;
   function "=" (Left, Right : CollisionType_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";

   type CollisionType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out CollisionType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CollisionType_Access;
   function toString (This : in out CollisionType) return Unbounded_String;

end org.allbinary.game.collision.CollisionType_Package;


