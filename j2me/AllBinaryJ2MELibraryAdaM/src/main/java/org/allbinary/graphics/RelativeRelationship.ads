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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;

package org.allbinary.graphics.RelativeRelationship_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type RelativeRelationship is tagged;
   type RelativeRelationship_Access is access all RelativeRelationship'Class;
   type RelativeRelationship_Access_Array is array (Natural range <>) of RelativeRelationship_Access;
   type RelativeRelationship_Access_Array_Access is access all RelativeRelationship_Access_Array;

   type RelativeRelationship is new Java_Object with record
      typesAllowedList : BasicArrayList_Access;
      x : Integer;
      y : Integer;
      z : Integer;
   end record;
   NULL_RELATIVE_RELATIONSHIP : RelativeRelationship_Access;

   procedure Initialize (This : in out RelativeRelationship'Class; point_Param : access GPoint'Class; typesAllowedList_Param : access BasicArrayList'Class);
   function Create (point_Param : access GPoint'Class; typesAllowedList_Param : access BasicArrayList'Class) return RelativeRelationship_Access;
   function getX (This : in out RelativeRelationship) return Integer;
   function getY (This : in out RelativeRelationship) return Integer;
   function getZ (This : in out RelativeRelationship) return Integer;
   function getTypesAllowedList (This : in out RelativeRelationship) return BasicArrayList_Access;
   procedure setTypesAllowedList (This : in out RelativeRelationship; typesAllowedList_Param : access BasicArrayList'Class);

end org.allbinary.graphics.RelativeRelationship_Package;


