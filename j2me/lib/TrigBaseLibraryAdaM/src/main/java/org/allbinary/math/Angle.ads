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

limited with org.allbinary.math.Angle_Package;
package org.allbinary.math.Angle_Package_References is
   type Angle_Access is access all org.allbinary.math.Angle_Package.Angle'Class;
   type Angle_Access_Array is array (Natural range <>) of Angle_Access;
   type Angle_Access_Array_Access is access all Angle_Access_Array;
   type Angle_Access_Array_Access_Array is array (Natural range <>) of Angle_Access_Array_Access;
   type Angle_Access_Array_Access_Array_Access is access all Angle_Access_Array_Access_Array;
end org.allbinary.math.Angle_Package_References;

with org.allbinary.math.Angle_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.math.Angle_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   function "=" (Left, Right : Angle_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   function "=" (Left, Right : Angle_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   function "=" (Left, Right : Angle_Access_Array_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";

   type Angle is new Java_Object with record
      value : Short_Integer;
   end record;

   procedure Initialize (This : in out Angle'Class; angle_Var : Short_Integer);
   function Create (angle_Var : Short_Integer) return Angle_Access;
   function getValue (This : in out Angle) return Short_Integer;

end org.allbinary.math.Angle_Package;


