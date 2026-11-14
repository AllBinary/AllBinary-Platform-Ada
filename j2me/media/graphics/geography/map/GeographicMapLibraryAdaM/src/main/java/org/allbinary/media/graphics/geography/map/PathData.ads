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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.PathData_Package;
package org.allbinary.media.graphics.geography.map.PathData_Package_References is
   type PathData_Access is access all org.allbinary.media.graphics.geography.map.PathData_Package.PathData'Class;
   type PathData_Access_Array is array (Natural range <>) of PathData_Access;
   type PathData_Access_Array_Access is access all PathData_Access_Array;
   type PathData_Access_Array_Access_Array is array (Natural range <>) of PathData_Access_Array_Access;
   type PathData_Access_Array_Access_Array_Access is access all PathData_Access_Array_Access_Array;
   type PathData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathData_Access_Array_Access;
   end record;
   function Java_Box (Value : PathData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathData_Access_Array_Access is (if Value /= null and then Value.all in PathData_Access_Array_Object'Class then PathData_Access_Array_Object'Class (Value.all).Value else null);
   type PathData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathData_Access_Array_Access_Array_Object'Class then PathData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.PathData_Package_References;

with org.allbinary.media.graphics.geography.map.PathData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.map.PathData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PathData_Access is org.allbinary.media.graphics.geography.map.PathData_Package_References.PathData_Access;
   function "=" (Left, Right : PathData_Access) return Boolean renames org.allbinary.media.graphics.geography.map.PathData_Package_References."=";
   subtype PathData_Access_Array is org.allbinary.media.graphics.geography.map.PathData_Package_References.PathData_Access_Array;
   function "=" (Left, Right : PathData_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.PathData_Package_References."=";
   subtype PathData_Access_Array_Access is org.allbinary.media.graphics.geography.map.PathData_Package_References.PathData_Access_Array_Access;
   function "=" (Left, Right : PathData_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.PathData_Package_References."=";
   function Java_Box (Value : PathData_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.PathData_Package_References.Java_Box;
   function Java_Unbox_PathData_Access_Array (Value : access Java_Object'Class) return PathData_Access_Array_Access renames org.allbinary.media.graphics.geography.map.PathData_Package_References.Java_Unbox_PathData_Access_Array;
   subtype PathData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.PathData_Package_References.PathData_Access_Array_Access_Array;
   function "=" (Left, Right : PathData_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.PathData_Package_References."=";
   subtype PathData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.PathData_Package_References.PathData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.PathData_Package_References."=";
   function Java_Box (Value : PathData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.PathData_Package_References.Java_Box;
   function Java_Unbox_PathData_Access_Array_Access_Array (Value : access Java_Object'Class) return PathData_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.PathData_Package_References.Java_Unbox_PathData_Access_Array_Access_Array;

   type PathData is new Java_Object with record
      OFFSET : Integer;
   end record;
   instance : PathData_Access;

   procedure Initialize (This : in out PathData'Class);
   function Create return PathData_Access;
   function getInstance return PathData_Access;

end org.allbinary.media.graphics.geography.map.PathData_Package;


