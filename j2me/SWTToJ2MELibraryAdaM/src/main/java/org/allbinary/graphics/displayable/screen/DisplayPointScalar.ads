-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package;
package org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References is
   type DisplayPointScalar_Access is access all org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package.DisplayPointScalar'Class;
   type DisplayPointScalar_Access_Array is array (Natural range <>) of DisplayPointScalar_Access;
   type DisplayPointScalar_Access_Array_Access is access all DisplayPointScalar_Access_Array;
   type DisplayPointScalar_Access_Array_Access_Array is array (Natural range <>) of DisplayPointScalar_Access_Array_Access;
   type DisplayPointScalar_Access_Array_Access_Array_Access is access all DisplayPointScalar_Access_Array_Access_Array;
end org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References;

with org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;

package org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DisplayPointScalar_Access is org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References.DisplayPointScalar_Access;
   function "=" (Left, Right : DisplayPointScalar_Access) return Boolean renames org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References."=";
   subtype DisplayPointScalar_Access_Array is org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References.DisplayPointScalar_Access_Array;
   function "=" (Left, Right : DisplayPointScalar_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References."=";
   subtype DisplayPointScalar_Access_Array_Access is org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References.DisplayPointScalar_Access_Array_Access;
   function "=" (Left, Right : DisplayPointScalar_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References."=";
   subtype DisplayPointScalar_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References.DisplayPointScalar_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayPointScalar_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References."=";
   subtype DisplayPointScalar_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References.DisplayPointScalar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayPointScalar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package_References."=";

   type DisplayPointScalar is new Java_Object with null record;
   instance : DisplayPointScalar_Access;

   procedure Initialize (This : in out DisplayPointScalar'Class);
   function Create return DisplayPointScalar_Access;
   function getInstance return DisplayPointScalar_Access;
   function processX (This : in out DisplayPointScalar; value : Integer) return Integer;
   procedure processX (This : in out DisplayPointScalar; value : Integer);
   function processY (This : in out DisplayPointScalar; value : Integer) return Integer;
   procedure processY (This : in out DisplayPointScalar; value : Integer);
   function process (This : in out DisplayPointScalar; point_Param : access GPoint_Package.GPoint'Class) return GPoint_Access;
   procedure process (This : in out DisplayPointScalar; point_Param : access GPoint_Package.GPoint'Class);

end org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package;


