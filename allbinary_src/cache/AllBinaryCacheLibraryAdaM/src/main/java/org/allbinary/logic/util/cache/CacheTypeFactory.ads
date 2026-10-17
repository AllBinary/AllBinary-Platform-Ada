--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.logic.util.cache_Case.CacheTypeFactory_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type CacheTypeFactory is tagged;
   type CacheTypeFactory_Access is access all CacheTypeFactory'Class;
   type CacheTypeFactory_Access_Array is array (Natural range <>) of CacheTypeFactory_Access;
   type CacheTypeFactory_Access_Array_Access is access all CacheTypeFactory_Access_Array;

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
   procedure getInstance;

end org.allbinary.logic.util.cache_Case.CacheTypeFactory_Package;


