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

limited with org.allbinary.media.image.cache.BufferedImageInfoFactory_Package;
package org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References is
   type BufferedImageInfoFactory_Access is access all org.allbinary.media.image.cache.BufferedImageInfoFactory_Package.BufferedImageInfoFactory'Class;
   type BufferedImageInfoFactory_Access_Array is array (Natural range <>) of BufferedImageInfoFactory_Access;
   type BufferedImageInfoFactory_Access_Array_Access is access all BufferedImageInfoFactory_Access_Array;
   type BufferedImageInfoFactory_Access_Array_Access_Array is array (Natural range <>) of BufferedImageInfoFactory_Access_Array_Access;
   type BufferedImageInfoFactory_Access_Array_Access_Array_Access is access all BufferedImageInfoFactory_Access_Array_Access_Array;
end org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References;

with org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.media.image.cache.BufferedImageInfo_Package;
with org.allbinary.media.image.cache.BufferedImageInfo_Package_References;

package org.allbinary.media.image.cache.BufferedImageInfoFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   subtype BufferedImageInfo_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access;
   use type BufferedImageInfo_Access;
   subtype BufferedImageInfo_Access_Array is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array;
   use type BufferedImageInfo_Access_Array;
   subtype BufferedImageInfo_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access;
   use type BufferedImageInfo_Access_Array_Access;
   subtype BufferedImageInfo_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access_Array;
   use type BufferedImageInfo_Access_Array_Access_Array;
   subtype BufferedImageInfo_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfo_Package_References.BufferedImageInfo_Access_Array_Access_Array_Access;
   use type BufferedImageInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BufferedImageInfoFactory_Access is org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References.BufferedImageInfoFactory_Access;
   function "=" (Left, Right : BufferedImageInfoFactory_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References."=";
   subtype BufferedImageInfoFactory_Access_Array is org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References.BufferedImageInfoFactory_Access_Array;
   function "=" (Left, Right : BufferedImageInfoFactory_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References."=";
   subtype BufferedImageInfoFactory_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References.BufferedImageInfoFactory_Access_Array_Access;
   function "=" (Left, Right : BufferedImageInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References."=";
   subtype BufferedImageInfoFactory_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References.BufferedImageInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedImageInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References."=";
   subtype BufferedImageInfoFactory_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References.BufferedImageInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedImageInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.cache.BufferedImageInfoFactory_Package_References."=";

   type BufferedImageInfoFactory is new Java_Object with null record;
   hashMap : HashMap_Access;

   procedure Initialize (This : in out BufferedImageInfoFactory'Class);
   function Create return BufferedImageInfoFactory_Access;
   function getInstance (width : Integer; height : Integer; type_Id : Integer) return BufferedImageInfo_Access;
   procedure getInstance (width : Integer; height : Integer; type_Id : Integer);

end org.allbinary.media.image.cache.BufferedImageInfoFactory_Package;


