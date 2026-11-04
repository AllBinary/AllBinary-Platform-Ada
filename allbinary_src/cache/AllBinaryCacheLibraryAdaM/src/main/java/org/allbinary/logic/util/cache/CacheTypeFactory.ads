--  Generated Code Do Not Modify

limited with org.allbinary.logic.util.cache.CacheTypeFactory_Package;
package org.allbinary.logic.util.cache.CacheTypeFactory_Package_References is
   type CacheTypeFactory_Access is access all org.allbinary.logic.util.cache.CacheTypeFactory_Package.CacheTypeFactory'Class;
   type CacheTypeFactory_Access_Array is array (Natural range <>) of CacheTypeFactory_Access;
   type CacheTypeFactory_Access_Array_Access is access all CacheTypeFactory_Access_Array;
   type CacheTypeFactory_Access_Array_Access_Array is array (Natural range <>) of CacheTypeFactory_Access_Array_Access;
   type CacheTypeFactory_Access_Array_Access_Array_Access is access all CacheTypeFactory_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.CacheTypeFactory_Package_References;

with org.allbinary.logic.util.cache.CacheTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheType_Package_References;

package org.allbinary.logic.util.cache.CacheTypeFactory_Package is

   package Reference_Types is
   subtype CacheType_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access;
   use type CacheType_Access;
   subtype CacheType_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array;
   use type CacheType_Access_Array;
   subtype CacheType_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access;
   use type CacheType_Access_Array_Access;
   subtype CacheType_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array;
   use type CacheType_Access_Array_Access_Array;
   subtype CacheType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array_Access;
   use type CacheType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CacheTypeFactory_Access is org.allbinary.logic.util.cache.CacheTypeFactory_Package_References.CacheTypeFactory_Access;
   function "=" (Left, Right : CacheTypeFactory_Access) return Boolean renames org.allbinary.logic.util.cache.CacheTypeFactory_Package_References."=";
   subtype CacheTypeFactory_Access_Array is org.allbinary.logic.util.cache.CacheTypeFactory_Package_References.CacheTypeFactory_Access_Array;
   function "=" (Left, Right : CacheTypeFactory_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheTypeFactory_Package_References."=";
   subtype CacheTypeFactory_Access_Array_Access is org.allbinary.logic.util.cache.CacheTypeFactory_Package_References.CacheTypeFactory_Access_Array_Access;
   function "=" (Left, Right : CacheTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheTypeFactory_Package_References."=";
   subtype CacheTypeFactory_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheTypeFactory_Package_References.CacheTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CacheTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheTypeFactory_Package_References."=";
   subtype CacheTypeFactory_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheTypeFactory_Package_References.CacheTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheTypeFactory_Package_References."=";

   type CacheTypeFactory is new Java_Object with record
      NO_CACHE : CacheType_Access;
      CACHE : CacheType_Access;
      SET : CacheType_Access;
      CACHE_VECTOR : CacheType_Access;
   end record;
   instance : CacheTypeFactory_Access;

   procedure Initialize (This : in out CacheTypeFactory'Class);
   function Create return CacheTypeFactory_Access;
   function getInstance return CacheTypeFactory_Access;

end org.allbinary.logic.util.cache.CacheTypeFactory_Package;


