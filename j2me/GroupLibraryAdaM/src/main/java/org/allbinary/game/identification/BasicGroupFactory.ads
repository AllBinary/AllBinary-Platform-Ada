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

limited with org.allbinary.game.identification.BasicGroupFactory_Package;
package org.allbinary.game.identification.BasicGroupFactory_Package_References is
   type BasicGroupFactory_Access is access all org.allbinary.game.identification.BasicGroupFactory_Package.BasicGroupFactory'Class;
   type BasicGroupFactory_Access_Array is array (Natural range <>) of BasicGroupFactory_Access;
   type BasicGroupFactory_Access_Array_Access is access all BasicGroupFactory_Access_Array;
   type BasicGroupFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGroupFactory_Access_Array_Access;
   type BasicGroupFactory_Access_Array_Access_Array_Access is access all BasicGroupFactory_Access_Array_Access_Array;
end org.allbinary.game.identification.BasicGroupFactory_Package_References;

with org.allbinary.game.identification.BasicGroupFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;

package org.allbinary.game.identification.BasicGroupFactory_Package is

   package Reference_Types is
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicGroupFactory_Access is org.allbinary.game.identification.BasicGroupFactory_Package_References.BasicGroupFactory_Access;
   function "=" (Left, Right : BasicGroupFactory_Access) return Boolean renames org.allbinary.game.identification.BasicGroupFactory_Package_References."=";
   subtype BasicGroupFactory_Access_Array is org.allbinary.game.identification.BasicGroupFactory_Package_References.BasicGroupFactory_Access_Array;
   function "=" (Left, Right : BasicGroupFactory_Access_Array) return Boolean renames org.allbinary.game.identification.BasicGroupFactory_Package_References."=";
   subtype BasicGroupFactory_Access_Array_Access is org.allbinary.game.identification.BasicGroupFactory_Package_References.BasicGroupFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGroupFactory_Access_Array_Access) return Boolean renames org.allbinary.game.identification.BasicGroupFactory_Package_References."=";
   subtype BasicGroupFactory_Access_Array_Access_Array is org.allbinary.game.identification.BasicGroupFactory_Package_References.BasicGroupFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGroupFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.BasicGroupFactory_Package_References."=";
   subtype BasicGroupFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.BasicGroupFactory_Package_References.BasicGroupFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGroupFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.BasicGroupFactory_Package_References."=";

   type BasicGroupFactory is new Java_Object with record
      NAME : Unbounded_String;
      NO_SUCH_GROUP : Unbounded_String;
      GOOD : Group_Access;
      ENEMY : Group_Access;
      ENEMY_ON_LEVEL : Group_Access;
      NONE : Group_Access;
      GOOD_ARRAY : Group_Access_Array_Access;
      ENEMY_ARRAY : Group_Access_Array_Access;
      ENEMY_ON_LEVEL_ARRAY : Group_Access_Array_Access;
      NONE_ARRAY : Group_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out BasicGroupFactory'Class);
   function Create return BasicGroupFactory_Access;
   function getInstance return BasicGroupFactory_Access;

end org.allbinary.game.identification.BasicGroupFactory_Package;


