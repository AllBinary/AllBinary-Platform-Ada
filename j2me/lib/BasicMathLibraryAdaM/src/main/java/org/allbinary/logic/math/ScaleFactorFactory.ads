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

limited with org.allbinary.logic.math.ScaleFactorFactory_Package;
package org.allbinary.logic.math.ScaleFactorFactory_Package_References is
   type ScaleFactorFactory_Access is access all org.allbinary.logic.math.ScaleFactorFactory_Package.ScaleFactorFactory'Class;
   type ScaleFactorFactory_Access_Array is array (Natural range <>) of ScaleFactorFactory_Access;
   type ScaleFactorFactory_Access_Array_Access is access all ScaleFactorFactory_Access_Array;
   type ScaleFactorFactory_Access_Array_Access_Array is array (Natural range <>) of ScaleFactorFactory_Access_Array_Access;
   type ScaleFactorFactory_Access_Array_Access_Array_Access is access all ScaleFactorFactory_Access_Array_Access_Array;
end org.allbinary.logic.math.ScaleFactorFactory_Package_References;

with org.allbinary.logic.math.ScaleFactorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.math.ScaleFactorFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ScaleFactorFactory_Access is org.allbinary.logic.math.ScaleFactorFactory_Package_References.ScaleFactorFactory_Access;
   function "=" (Left, Right : ScaleFactorFactory_Access) return Boolean renames org.allbinary.logic.math.ScaleFactorFactory_Package_References."=";
   subtype ScaleFactorFactory_Access_Array is org.allbinary.logic.math.ScaleFactorFactory_Package_References.ScaleFactorFactory_Access_Array;
   function "=" (Left, Right : ScaleFactorFactory_Access_Array) return Boolean renames org.allbinary.logic.math.ScaleFactorFactory_Package_References."=";
   subtype ScaleFactorFactory_Access_Array_Access is org.allbinary.logic.math.ScaleFactorFactory_Package_References.ScaleFactorFactory_Access_Array_Access;
   function "=" (Left, Right : ScaleFactorFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.math.ScaleFactorFactory_Package_References."=";
   subtype ScaleFactorFactory_Access_Array_Access_Array is org.allbinary.logic.math.ScaleFactorFactory_Package_References.ScaleFactorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleFactorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.ScaleFactorFactory_Package_References."=";
   subtype ScaleFactorFactory_Access_Array_Access_Array_Access is org.allbinary.logic.math.ScaleFactorFactory_Package_References.ScaleFactorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleFactorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.ScaleFactorFactory_Package_References."=";

   type ScaleFactorFactory is new Java_Object with record
      DEFAULT_SCALE_FACTOR : Integer;
      DEFAULT_SCALE_VALUE : Integer;
   end record;
   instance : ScaleFactorFactory_Access;

   procedure Initialize (This : in out ScaleFactorFactory'Class);
   function Create return ScaleFactorFactory_Access;
   function getInstance return ScaleFactorFactory_Access;

end org.allbinary.logic.math.ScaleFactorFactory_Package;


