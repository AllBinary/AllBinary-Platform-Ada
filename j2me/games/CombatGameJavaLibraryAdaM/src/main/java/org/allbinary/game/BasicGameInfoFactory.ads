--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.BasicGameInfoFactory_Package is


   type BasicGameInfoFactory is tagged;
   type BasicGameInfoFactory_Access is access all BasicGameInfoFactory'Class;
   type BasicGameInfoFactory_Access_Array is array (Natural range <>) of BasicGameInfoFactory_Access;
   type BasicGameInfoFactory_Access_Array_Access is access all BasicGameInfoFactory_Access_Array;

   type BasicGameInfoFactory is new Java_Object with record
      currentReleaseIndex : Integer;
      currentDestroyIndex : Integer;
      total : Integer;
   end record;
   SINGLETON : BasicGameInfoFactory_Access;

   procedure Initialize (This : in out BasicGameInfoFactory'Class);
   function Create return BasicGameInfoFactory_Access;
   function getInstance return BasicGameInfoFactory_Access;
   procedure getInstance;
   procedure init (This : in out BasicGameInfoFactory; total : Integer);
   function isPeaked (This : in out BasicGameInfoFactory) return Boolean;
   procedure isPeaked (This : in out BasicGameInfoFactory);
   function howManyLeft (This : in out BasicGameInfoFactory) return Integer;
   procedure howManyLeft (This : in out BasicGameInfoFactory);

end org.allbinary.game.BasicGameInfoFactory_Package;


