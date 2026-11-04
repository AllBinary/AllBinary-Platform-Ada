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

limited with org.allbinary.animation.VectorMirrorGenerator_Package;
package org.allbinary.animation.VectorMirrorGenerator_Package_References is
   type VectorMirrorGenerator_Access is access all org.allbinary.animation.VectorMirrorGenerator_Package.VectorMirrorGenerator'Class;
   type VectorMirrorGenerator_Access_Array is array (Natural range <>) of VectorMirrorGenerator_Access;
   type VectorMirrorGenerator_Access_Array_Access is access all VectorMirrorGenerator_Access_Array;
   type VectorMirrorGenerator_Access_Array_Access_Array is array (Natural range <>) of VectorMirrorGenerator_Access_Array_Access;
   type VectorMirrorGenerator_Access_Array_Access_Array_Access is access all VectorMirrorGenerator_Access_Array_Access_Array;
end org.allbinary.animation.VectorMirrorGenerator_Package_References;

with org.allbinary.animation.VectorMirrorGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.animation.VectorAnimationUtil_Package;
with org.allbinary.animation.VectorAnimationUtil_Package_References;

package org.allbinary.animation.VectorMirrorGenerator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype VectorAnimationUtil_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access;
   use type VectorAnimationUtil_Access;
   subtype VectorAnimationUtil_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array;
   use type VectorAnimationUtil_Access_Array;
   subtype VectorAnimationUtil_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access;
   use type VectorAnimationUtil_Access_Array_Access;
   subtype VectorAnimationUtil_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array;
   use type VectorAnimationUtil_Access_Array_Access_Array;
   subtype VectorAnimationUtil_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationUtil_Package_References.VectorAnimationUtil_Access_Array_Access_Array_Access;
   use type VectorAnimationUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VectorMirrorGenerator_Access is org.allbinary.animation.VectorMirrorGenerator_Package_References.VectorMirrorGenerator_Access;
   function "=" (Left, Right : VectorMirrorGenerator_Access) return Boolean renames org.allbinary.animation.VectorMirrorGenerator_Package_References."=";
   subtype VectorMirrorGenerator_Access_Array is org.allbinary.animation.VectorMirrorGenerator_Package_References.VectorMirrorGenerator_Access_Array;
   function "=" (Left, Right : VectorMirrorGenerator_Access_Array) return Boolean renames org.allbinary.animation.VectorMirrorGenerator_Package_References."=";
   subtype VectorMirrorGenerator_Access_Array_Access is org.allbinary.animation.VectorMirrorGenerator_Package_References.VectorMirrorGenerator_Access_Array_Access;
   function "=" (Left, Right : VectorMirrorGenerator_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorMirrorGenerator_Package_References."=";
   subtype VectorMirrorGenerator_Access_Array_Access_Array is org.allbinary.animation.VectorMirrorGenerator_Package_References.VectorMirrorGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : VectorMirrorGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorMirrorGenerator_Package_References."=";
   subtype VectorMirrorGenerator_Access_Array_Access_Array_Access is org.allbinary.animation.VectorMirrorGenerator_Package_References.VectorMirrorGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorMirrorGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorMirrorGenerator_Package_References."=";

   type VectorMirrorGenerator is new Java_Object with record
      logUtil : LogUtil_Access;
      vectorAnimationUtil : VectorAnimationUtil_Access;
   end record;
   instance : VectorMirrorGenerator_Access;

   procedure Initialize (This : in out VectorMirrorGenerator'Class);
   function Create return VectorMirrorGenerator_Access;
   function getInstance return VectorMirrorGenerator_Access;
   function getInstance (This : in out VectorMirrorGenerator; points : Integer_Array_Access_Array_Access_Array_Access; width : Integer) return Integer_Array_Access_Array_Access_Array_Access;
   procedure getInstance (This : in out VectorMirrorGenerator; points : Integer_Array_Access_Array_Access_Array_Access; width : Integer);
   function getInstance (This : in out VectorMirrorGenerator; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; width : Integer) return BasicArrayList_Access;
   procedure getInstance (This : in out VectorMirrorGenerator; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; width : Integer);

end org.allbinary.animation.VectorMirrorGenerator_Package;


