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

limited with org.allbinary.animation.vector.VectorCenterGenerator_Package;
package org.allbinary.animation.vector.VectorCenterGenerator_Package_References is
   type VectorCenterGenerator_Access is access all org.allbinary.animation.vector.VectorCenterGenerator_Package.VectorCenterGenerator'Class;
   type VectorCenterGenerator_Access_Array is array (Natural range <>) of VectorCenterGenerator_Access;
   type VectorCenterGenerator_Access_Array_Access is access all VectorCenterGenerator_Access_Array;
   type VectorCenterGenerator_Access_Array_Access_Array is array (Natural range <>) of VectorCenterGenerator_Access_Array_Access;
   type VectorCenterGenerator_Access_Array_Access_Array_Access is access all VectorCenterGenerator_Access_Array_Access_Array;
end org.allbinary.animation.vector.VectorCenterGenerator_Package_References;

with org.allbinary.animation.vector.VectorCenterGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.animation.vector.VectorCenterGenerator_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype VectorCenterGenerator_Access is org.allbinary.animation.vector.VectorCenterGenerator_Package_References.VectorCenterGenerator_Access;
   function "=" (Left, Right : VectorCenterGenerator_Access) return Boolean renames org.allbinary.animation.vector.VectorCenterGenerator_Package_References."=";
   subtype VectorCenterGenerator_Access_Array is org.allbinary.animation.vector.VectorCenterGenerator_Package_References.VectorCenterGenerator_Access_Array;
   function "=" (Left, Right : VectorCenterGenerator_Access_Array) return Boolean renames org.allbinary.animation.vector.VectorCenterGenerator_Package_References."=";
   subtype VectorCenterGenerator_Access_Array_Access is org.allbinary.animation.vector.VectorCenterGenerator_Package_References.VectorCenterGenerator_Access_Array_Access;
   function "=" (Left, Right : VectorCenterGenerator_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.VectorCenterGenerator_Package_References."=";
   subtype VectorCenterGenerator_Access_Array_Access_Array is org.allbinary.animation.vector.VectorCenterGenerator_Package_References.VectorCenterGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : VectorCenterGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.VectorCenterGenerator_Package_References."=";
   subtype VectorCenterGenerator_Access_Array_Access_Array_Access is org.allbinary.animation.vector.VectorCenterGenerator_Package_References.VectorCenterGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorCenterGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.VectorCenterGenerator_Package_References."=";

   type VectorCenterGenerator is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      minX : Integer;
      minY : Integer;
      maxX : Integer;
      maxY : Integer;
      dx : Integer;
      dy : Integer;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out VectorCenterGenerator'Class);
   function Create return VectorCenterGenerator_Access;
   procedure calculate (This : in out VectorCenterGenerator; hashMap_Param : access HashMap_Package.HashMap'Class);
   procedure transform (This : in out VectorCenterGenerator; hashMap_Param : access HashMap_Package.HashMap'Class);
   procedure getInstance (This : in out VectorCenterGenerator; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function translate (list_Param : access BasicArrayList_Package.BasicArrayList'Class; x : Integer; y : Integer) return BasicArrayList_Access;
   procedure translate (list_Param : access BasicArrayList_Package.BasicArrayList'Class; x : Integer; y : Integer);
   function getWidth (This : in out VectorCenterGenerator) return Integer;
   procedure setWidth (This : in out VectorCenterGenerator; width : Integer);
   function getHeight (This : in out VectorCenterGenerator) return Integer;
   procedure setHeight (This : in out VectorCenterGenerator; height : Integer);

end org.allbinary.animation.vector.VectorCenterGenerator_Package;


