--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.cache.PoolTypeFactory_Package is


   type PoolTypeFactory is tagged;
   type PoolTypeFactory_Access is access all PoolTypeFactory'Class;
   type PoolTypeFactory_Access_Array is array (Natural range <>) of PoolTypeFactory_Access;
   type PoolTypeFactory_Access_Array_Access is access all PoolTypeFactory_Access_Array;

   type PoolTypeFactory is new Java_Object with record
      VECTOR_POOL : PoolType_Access;
   end record;
   instance : PoolTypeFactory_Access;

   procedure Initialize (This : in out PoolTypeFactory'Class);
   function Create return PoolTypeFactory_Access;
   function getInstance return PoolTypeFactory_Access;
   procedure getInstance;

end org.allbinary.logic.util.cache.PoolTypeFactory_Package;


