--  Generated Code Do Not Modify

limited with org.allbinary.logic.util.cache.PoolTypeFactory_Package;
package org.allbinary.logic.util.cache.PoolTypeFactory_Package_References is
   type PoolTypeFactory_Access is access all org.allbinary.logic.util.cache.PoolTypeFactory_Package.PoolTypeFactory'Class;
   type PoolTypeFactory_Access_Array is array (Natural range <>) of PoolTypeFactory_Access;
   type PoolTypeFactory_Access_Array_Access is access all PoolTypeFactory_Access_Array;
   type PoolTypeFactory_Access_Array_Access_Array is array (Natural range <>) of PoolTypeFactory_Access_Array_Access;
   type PoolTypeFactory_Access_Array_Access_Array_Access is access all PoolTypeFactory_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.PoolTypeFactory_Package_References;

with org.allbinary.logic.util.cache.PoolTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.PoolType_Package;
with org.allbinary.logic.util.cache.PoolType_Package_References;

package org.allbinary.logic.util.cache.PoolTypeFactory_Package is

   package Reference_Types is
   subtype PoolType_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access;
   use type PoolType_Access;
   subtype PoolType_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array;
   use type PoolType_Access_Array;
   subtype PoolType_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access;
   use type PoolType_Access_Array_Access;
   subtype PoolType_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array;
   use type PoolType_Access_Array_Access_Array;
   subtype PoolType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolType_Package_References.PoolType_Access_Array_Access_Array_Access;
   use type PoolType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PoolTypeFactory_Access is org.allbinary.logic.util.cache.PoolTypeFactory_Package_References.PoolTypeFactory_Access;
   function "=" (Left, Right : PoolTypeFactory_Access) return Boolean renames org.allbinary.logic.util.cache.PoolTypeFactory_Package_References."=";
   subtype PoolTypeFactory_Access_Array is org.allbinary.logic.util.cache.PoolTypeFactory_Package_References.PoolTypeFactory_Access_Array;
   function "=" (Left, Right : PoolTypeFactory_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolTypeFactory_Package_References."=";
   subtype PoolTypeFactory_Access_Array_Access is org.allbinary.logic.util.cache.PoolTypeFactory_Package_References.PoolTypeFactory_Access_Array_Access;
   function "=" (Left, Right : PoolTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolTypeFactory_Package_References."=";
   subtype PoolTypeFactory_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolTypeFactory_Package_References.PoolTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PoolTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.PoolTypeFactory_Package_References."=";
   subtype PoolTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolTypeFactory_Package_References.PoolTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PoolTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.PoolTypeFactory_Package_References."=";

   type PoolTypeFactory is new Java_Object with record
      VECTOR_POOL : PoolType_Access;
   end record;
   instance : PoolTypeFactory_Access;

   procedure Initialize (This : in out PoolTypeFactory'Class);
   function Create return PoolTypeFactory_Access;
   function getInstance return PoolTypeFactory_Access;

end org.allbinary.logic.util.cache.PoolTypeFactory_Package;


