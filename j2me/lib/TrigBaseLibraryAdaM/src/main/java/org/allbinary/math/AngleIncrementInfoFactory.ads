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

limited with org.allbinary.math.AngleIncrementInfoFactory_Package;
package org.allbinary.math.AngleIncrementInfoFactory_Package_References is
   type AngleIncrementInfoFactory_Access is access all org.allbinary.math.AngleIncrementInfoFactory_Package.AngleIncrementInfoFactory'Class;
   type AngleIncrementInfoFactory_Access_Array is array (Natural range <>) of AngleIncrementInfoFactory_Access;
   type AngleIncrementInfoFactory_Access_Array_Access is access all AngleIncrementInfoFactory_Access_Array;
   type AngleIncrementInfoFactory_Access_Array_Access_Array is array (Natural range <>) of AngleIncrementInfoFactory_Access_Array_Access;
   type AngleIncrementInfoFactory_Access_Array_Access_Array_Access is access all AngleIncrementInfoFactory_Access_Array_Access_Array;
end org.allbinary.math.AngleIncrementInfoFactory_Package_References;

with org.allbinary.math.AngleIncrementInfoFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleIncrementInfo_Package_References;

package org.allbinary.math.AngleIncrementInfoFactory_Package is

   package Reference_Types is
   subtype AngleIncrementInfo_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access;
   use type AngleIncrementInfo_Access;
   subtype AngleIncrementInfo_Access_Array is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array;
   use type AngleIncrementInfo_Access_Array;
   subtype AngleIncrementInfo_Access_Array_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access;
   use type AngleIncrementInfo_Access_Array_Access;
   subtype AngleIncrementInfo_Access_Array_Access_Array is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access_Array;
   use type AngleIncrementInfo_Access_Array_Access_Array;
   subtype AngleIncrementInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleIncrementInfo_Package_References.AngleIncrementInfo_Access_Array_Access_Array_Access;
   use type AngleIncrementInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AngleIncrementInfoFactory_Access is org.allbinary.math.AngleIncrementInfoFactory_Package_References.AngleIncrementInfoFactory_Access;
   function "=" (Left, Right : AngleIncrementInfoFactory_Access) return Boolean renames org.allbinary.math.AngleIncrementInfoFactory_Package_References."=";
   subtype AngleIncrementInfoFactory_Access_Array is org.allbinary.math.AngleIncrementInfoFactory_Package_References.AngleIncrementInfoFactory_Access_Array;
   function "=" (Left, Right : AngleIncrementInfoFactory_Access_Array) return Boolean renames org.allbinary.math.AngleIncrementInfoFactory_Package_References."=";
   subtype AngleIncrementInfoFactory_Access_Array_Access is org.allbinary.math.AngleIncrementInfoFactory_Package_References.AngleIncrementInfoFactory_Access_Array_Access;
   function "=" (Left, Right : AngleIncrementInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.math.AngleIncrementInfoFactory_Package_References."=";
   subtype AngleIncrementInfoFactory_Access_Array_Access_Array is org.allbinary.math.AngleIncrementInfoFactory_Package_References.AngleIncrementInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AngleIncrementInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleIncrementInfoFactory_Package_References."=";
   subtype AngleIncrementInfoFactory_Access_Array_Access_Array_Access is org.allbinary.math.AngleIncrementInfoFactory_Package_References.AngleIncrementInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleIncrementInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleIncrementInfoFactory_Package_References."=";

   type AngleIncrementInfoFactory is new Java_Object with record
      angleIncrementInfo : AngleIncrementInfo_Access_Array_Access;
   end record;
   instance : AngleIncrementInfoFactory_Access;

   procedure Initialize (This : in out AngleIncrementInfoFactory'Class);
   function Create return AngleIncrementInfoFactory_Access;
   function getInstance return AngleIncrementInfoFactory_Access;
   function getAt (This : in out AngleIncrementInfoFactory; angleIncrement : Short_Integer) return AngleIncrementInfo_Access;
   procedure getAt (This : in out AngleIncrementInfoFactory; angleIncrement : Short_Integer);

end org.allbinary.math.AngleIncrementInfoFactory_Package;


