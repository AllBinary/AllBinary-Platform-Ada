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

limited with org.allbinary.animation.VectorExplosionType_Package;
package org.allbinary.animation.VectorExplosionType_Package_References is
   type VectorExplosionType_Access is access all org.allbinary.animation.VectorExplosionType_Package.VectorExplosionType'Class;
   type VectorExplosionType_Access_Array is array (Natural range <>) of VectorExplosionType_Access;
   type VectorExplosionType_Access_Array_Access is access all VectorExplosionType_Access_Array;
   type VectorExplosionType_Access_Array_Access_Array is array (Natural range <>) of VectorExplosionType_Access_Array_Access;
   type VectorExplosionType_Access_Array_Access_Array_Access is access all VectorExplosionType_Access_Array_Access_Array;
end org.allbinary.animation.VectorExplosionType_Package_References;

with org.allbinary.animation.VectorExplosionType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.VectorExplosionType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype VectorExplosionType_Access is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access;
   function "=" (Left, Right : VectorExplosionType_Access) return Boolean renames org.allbinary.animation.VectorExplosionType_Package_References."=";
   subtype VectorExplosionType_Access_Array is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array;
   function "=" (Left, Right : VectorExplosionType_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionType_Package_References."=";
   subtype VectorExplosionType_Access_Array_Access is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionType_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionType_Package_References."=";
   subtype VectorExplosionType_Access_Array_Access_Array is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array_Access_Array;
   function "=" (Left, Right : VectorExplosionType_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorExplosionType_Package_References."=";
   subtype VectorExplosionType_Access_Array_Access_Array_Access is org.allbinary.animation.VectorExplosionType_Package_References.VectorExplosionType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorExplosionType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorExplosionType_Package_References."=";

   type VectorExplosionType is new Java_Object with null record;

   procedure Initialize (This : in out VectorExplosionType'Class);
   function Create return VectorExplosionType_Access;

end org.allbinary.animation.VectorExplosionType_Package;


