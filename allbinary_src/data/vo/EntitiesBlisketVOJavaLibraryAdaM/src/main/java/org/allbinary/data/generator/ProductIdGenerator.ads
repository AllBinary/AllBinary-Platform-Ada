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

limited with org.allbinary.data.generator.ProductIdGenerator_Package;
package org.allbinary.data.generator.ProductIdGenerator_Package_References is
   type ProductIdGenerator_Access is access all org.allbinary.data.generator.ProductIdGenerator_Package.ProductIdGenerator'Class;
   type ProductIdGenerator_Access_Array is array (Natural range <>) of ProductIdGenerator_Access;
   type ProductIdGenerator_Access_Array_Access is access all ProductIdGenerator_Access_Array;
   type ProductIdGenerator_Access_Array_Access_Array is array (Natural range <>) of ProductIdGenerator_Access_Array_Access;
   type ProductIdGenerator_Access_Array_Access_Array_Access is access all ProductIdGenerator_Access_Array_Access_Array;
end org.allbinary.data.generator.ProductIdGenerator_Package_References;

with org.allbinary.data.generator.ProductIdGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.ProductIdGenerator_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ProductIdGenerator_Access is org.allbinary.data.generator.ProductIdGenerator_Package_References.ProductIdGenerator_Access;
   function "=" (Left, Right : ProductIdGenerator_Access) return Boolean renames org.allbinary.data.generator.ProductIdGenerator_Package_References."=";
   subtype ProductIdGenerator_Access_Array is org.allbinary.data.generator.ProductIdGenerator_Package_References.ProductIdGenerator_Access_Array;
   function "=" (Left, Right : ProductIdGenerator_Access_Array) return Boolean renames org.allbinary.data.generator.ProductIdGenerator_Package_References."=";
   subtype ProductIdGenerator_Access_Array_Access is org.allbinary.data.generator.ProductIdGenerator_Package_References.ProductIdGenerator_Access_Array_Access;
   function "=" (Left, Right : ProductIdGenerator_Access_Array_Access) return Boolean renames org.allbinary.data.generator.ProductIdGenerator_Package_References."=";
   subtype ProductIdGenerator_Access_Array_Access_Array is org.allbinary.data.generator.ProductIdGenerator_Package_References.ProductIdGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : ProductIdGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.ProductIdGenerator_Package_References."=";
   subtype ProductIdGenerator_Access_Array_Access_Array_Access is org.allbinary.data.generator.ProductIdGenerator_Package_References.ProductIdGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProductIdGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.ProductIdGenerator_Package_References."=";

   type ProductIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out ProductIdGenerator'Class);
   function Create return ProductIdGenerator_Access;

end org.allbinary.data.generator.ProductIdGenerator_Package;


