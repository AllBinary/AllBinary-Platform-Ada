--  Generated Code Do Not Modify

limited with org.allbinary.game.BasicGameInfoFactory_Package;
package org.allbinary.game.BasicGameInfoFactory_Package_References is
   type BasicGameInfoFactory_Access is access all org.allbinary.game.BasicGameInfoFactory_Package.BasicGameInfoFactory'Class;
   type BasicGameInfoFactory_Access_Array is array (Natural range <>) of BasicGameInfoFactory_Access;
   type BasicGameInfoFactory_Access_Array_Access is access all BasicGameInfoFactory_Access_Array;
   type BasicGameInfoFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGameInfoFactory_Access_Array_Access;
   type BasicGameInfoFactory_Access_Array_Access_Array_Access is access all BasicGameInfoFactory_Access_Array_Access_Array;
end org.allbinary.game.BasicGameInfoFactory_Package_References;

with org.allbinary.game.BasicGameInfoFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.BasicGameInfoFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicGameInfoFactory_Access is org.allbinary.game.BasicGameInfoFactory_Package_References.BasicGameInfoFactory_Access;
   function "=" (Left, Right : BasicGameInfoFactory_Access) return Boolean renames org.allbinary.game.BasicGameInfoFactory_Package_References."=";
   subtype BasicGameInfoFactory_Access_Array is org.allbinary.game.BasicGameInfoFactory_Package_References.BasicGameInfoFactory_Access_Array;
   function "=" (Left, Right : BasicGameInfoFactory_Access_Array) return Boolean renames org.allbinary.game.BasicGameInfoFactory_Package_References."=";
   subtype BasicGameInfoFactory_Access_Array_Access is org.allbinary.game.BasicGameInfoFactory_Package_References.BasicGameInfoFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGameInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.game.BasicGameInfoFactory_Package_References."=";
   subtype BasicGameInfoFactory_Access_Array_Access_Array is org.allbinary.game.BasicGameInfoFactory_Package_References.BasicGameInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGameInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.BasicGameInfoFactory_Package_References."=";
   subtype BasicGameInfoFactory_Access_Array_Access_Array_Access is org.allbinary.game.BasicGameInfoFactory_Package_References.BasicGameInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGameInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.BasicGameInfoFactory_Package_References."=";

   type BasicGameInfoFactory is new Java_Object with record
      currentReleaseIndex : Integer;
      currentDestroyIndex : Integer;
      total : Integer;
   end record;
   SINGLETON : BasicGameInfoFactory_Access;

   procedure Initialize (This : in out BasicGameInfoFactory'Class);
   function Create return BasicGameInfoFactory_Access;
   function getInstance return BasicGameInfoFactory_Access;
   procedure init (This : in out BasicGameInfoFactory; total : Integer);
   function isPeaked (This : in out BasicGameInfoFactory) return Boolean;
   function howManyLeft (This : in out BasicGameInfoFactory) return Integer;

end org.allbinary.game.BasicGameInfoFactory_Package;


