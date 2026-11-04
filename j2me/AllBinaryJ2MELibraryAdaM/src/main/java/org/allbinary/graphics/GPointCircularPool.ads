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

limited with org.allbinary.graphics.GPointCircularPool_Package;
package org.allbinary.graphics.GPointCircularPool_Package_References is
   type GPointCircularPool_Access is access all org.allbinary.graphics.GPointCircularPool_Package.GPointCircularPool'Class;
   type GPointCircularPool_Access_Array is array (Natural range <>) of GPointCircularPool_Access;
   type GPointCircularPool_Access_Array_Access is access all GPointCircularPool_Access_Array;
   type GPointCircularPool_Access_Array_Access_Array is array (Natural range <>) of GPointCircularPool_Access_Array_Access;
   type GPointCircularPool_Access_Array_Access_Array_Access is access all GPointCircularPool_Access_Array_Access_Array;
end org.allbinary.graphics.GPointCircularPool_Package_References;

with org.allbinary.graphics.GPointCircularPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.BaseCircularPool_Package; use org.allbinary.logic.util.cache.BaseCircularPool_Package;

package org.allbinary.graphics.GPointCircularPool_Package is

   package BaseCircularPool_Package renames Standard.org.allbinary.logic.util.cache.BaseCircularPool_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GPointCircularPool_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access;
   function "=" (Left, Right : GPointCircularPool_Access) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array;
   function "=" (Left, Right : GPointCircularPool_Access_Array) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access;
   function "=" (Left, Right : GPointCircularPool_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array_Access_Array is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : GPointCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";
   subtype GPointCircularPool_Access_Array_Access_Array_Access is org.allbinary.graphics.GPointCircularPool_Package_References.GPointCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPointCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPointCircularPool_Package_References."=";

   type GPointCircularPool is new BaseCircularPool with null record;

   procedure Initialize (This : in out GPointCircularPool'Class; size : Integer);
   function Create (size : Integer) return GPointCircularPool_Access;

end org.allbinary.graphics.GPointCircularPool_Package;


