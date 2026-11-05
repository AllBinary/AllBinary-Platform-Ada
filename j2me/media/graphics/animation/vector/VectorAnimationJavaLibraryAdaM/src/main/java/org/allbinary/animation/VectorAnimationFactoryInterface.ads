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

limited with org.allbinary.animation.VectorAnimationFactoryInterface_Package;
package org.allbinary.animation.VectorAnimationFactoryInterface_Package_References is
   type VectorAnimationFactoryInterface_Access is access all org.allbinary.animation.VectorAnimationFactoryInterface_Package.VectorAnimationFactoryInterface'Class;
   type VectorAnimationFactoryInterface_Access_Array is array (Natural range <>) of VectorAnimationFactoryInterface_Access;
   type VectorAnimationFactoryInterface_Access_Array_Access is access all VectorAnimationFactoryInterface_Access_Array;
   type VectorAnimationFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of VectorAnimationFactoryInterface_Access_Array_Access;
   type VectorAnimationFactoryInterface_Access_Array_Access_Array_Access is access all VectorAnimationFactoryInterface_Access_Array_Access_Array;
end org.allbinary.animation.VectorAnimationFactoryInterface_Package_References;

with org.allbinary.animation.VectorAnimationFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.animation.VectorAnimation_Package_References;

package org.allbinary.animation.VectorAnimationFactoryInterface_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype VectorAnimation_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access;
   use type VectorAnimation_Access;
   subtype VectorAnimation_Access_Array is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array;
   use type VectorAnimation_Access_Array;
   subtype VectorAnimation_Access_Array_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access;
   use type VectorAnimation_Access_Array_Access;
   subtype VectorAnimation_Access_Array_Access_Array is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access_Array;
   use type VectorAnimation_Access_Array_Access_Array;
   subtype VectorAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimation_Package_References.VectorAnimation_Access_Array_Access_Array_Access;
   use type VectorAnimation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type VectorAnimationFactoryInterface is interface;
   subtype VectorAnimationFactoryInterface_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   subtype VectorAnimationFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationFactoryInterface_Package_References.VectorAnimationFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationFactoryInterface_Package_References."=";
   function Java_Object_Access_From_VectorAnimationFactoryInterface (Value : VectorAnimationFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out VectorAnimationFactoryInterface; points : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) return VectorAnimation_Access is abstract;
   procedure getInstance (This : in out VectorAnimationFactoryInterface; points : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) is abstract;

end org.allbinary.animation.VectorAnimationFactoryInterface_Package;


