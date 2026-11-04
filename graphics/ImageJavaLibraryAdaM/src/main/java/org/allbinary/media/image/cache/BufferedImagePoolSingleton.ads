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

limited with org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package;
package org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References is
   type BufferedImagePoolSingleton_Access is access all org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package.BufferedImagePoolSingleton'Class;
   type BufferedImagePoolSingleton_Access_Array is array (Natural range <>) of BufferedImagePoolSingleton_Access;
   type BufferedImagePoolSingleton_Access_Array_Access is access all BufferedImagePoolSingleton_Access_Array;
   type BufferedImagePoolSingleton_Access_Array_Access_Array is array (Natural range <>) of BufferedImagePoolSingleton_Access_Array_Access;
   type BufferedImagePoolSingleton_Access_Array_Access_Array_Access is access all BufferedImagePoolSingleton_Access_Array_Access_Array;
end org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References;

with org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.PoolInterface_Package;
with org.allbinary.logic.util.cache.PoolInterface_Package_References;

package org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package is

   package PoolInterface_Package renames Standard.org.allbinary.logic.util.cache.PoolInterface_Package;
   package Reference_Types is
   subtype PoolInterface_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access;
   use type PoolInterface_Access;
   subtype PoolInterface_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array;
   use type PoolInterface_Access_Array;
   subtype PoolInterface_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access;
   use type PoolInterface_Access_Array_Access;
   subtype PoolInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array;
   use type PoolInterface_Access_Array_Access_Array;
   subtype PoolInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.PoolInterface_Package_References.PoolInterface_Access_Array_Access_Array_Access;
   use type PoolInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BufferedImagePoolSingleton_Access is org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References.BufferedImagePoolSingleton_Access;
   function "=" (Left, Right : BufferedImagePoolSingleton_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References."=";
   subtype BufferedImagePoolSingleton_Access_Array is org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References.BufferedImagePoolSingleton_Access_Array;
   function "=" (Left, Right : BufferedImagePoolSingleton_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References."=";
   subtype BufferedImagePoolSingleton_Access_Array_Access is org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References.BufferedImagePoolSingleton_Access_Array_Access;
   function "=" (Left, Right : BufferedImagePoolSingleton_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References."=";
   subtype BufferedImagePoolSingleton_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References.BufferedImagePoolSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedImagePoolSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References."=";
   subtype BufferedImagePoolSingleton_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References.BufferedImagePoolSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedImagePoolSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package_References."=";

   type BufferedImagePoolSingleton is new Java_Object with null record;
   poolInterface : PoolInterface_Access;

   procedure Initialize (This : in out BufferedImagePoolSingleton'Class);
   function Create return BufferedImagePoolSingleton_Access;
   function getInstance return PoolInterface_Access;

end org.allbinary.media.image.cache.BufferedImagePoolSingleton_Package;


