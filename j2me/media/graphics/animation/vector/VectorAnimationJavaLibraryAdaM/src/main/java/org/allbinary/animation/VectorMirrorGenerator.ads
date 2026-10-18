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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.animation.VectorAnimationUtil_Package; use org.allbinary.animation.VectorAnimationUtil_Package;

package org.allbinary.animation.VectorMirrorGenerator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type VectorMirrorGenerator is tagged;
   type VectorMirrorGenerator_Access is access all VectorMirrorGenerator'Class;
   type VectorMirrorGenerator_Access_Array is array (Natural range <>) of VectorMirrorGenerator_Access;
   type VectorMirrorGenerator_Access_Array_Access is access all VectorMirrorGenerator_Access_Array;
   type VectorMirrorGenerator_Access_Array_Access_Array is array (Natural range <>) of VectorMirrorGenerator_Access_Array_Access;
   type VectorMirrorGenerator_Access_Array_Access_Array_Access is access all VectorMirrorGenerator_Access_Array_Access_Array;

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


