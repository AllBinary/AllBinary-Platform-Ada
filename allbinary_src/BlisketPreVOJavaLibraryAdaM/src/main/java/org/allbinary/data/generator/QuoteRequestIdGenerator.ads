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

limited with org.allbinary.data.generator.QuoteRequestIdGenerator_Package;
package org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References is
   type QuoteRequestIdGenerator_Access is access all org.allbinary.data.generator.QuoteRequestIdGenerator_Package.QuoteRequestIdGenerator'Class;
   type QuoteRequestIdGenerator_Access_Array is array (Natural range <>) of QuoteRequestIdGenerator_Access;
   type QuoteRequestIdGenerator_Access_Array_Access is access all QuoteRequestIdGenerator_Access_Array;
   type QuoteRequestIdGenerator_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestIdGenerator_Access_Array_Access;
   type QuoteRequestIdGenerator_Access_Array_Access_Array_Access is access all QuoteRequestIdGenerator_Access_Array_Access_Array;
end org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References;

with org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.QuoteRequestIdGenerator_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype QuoteRequestIdGenerator_Access is org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References.QuoteRequestIdGenerator_Access;
   function "=" (Left, Right : QuoteRequestIdGenerator_Access) return Boolean renames org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References."=";
   subtype QuoteRequestIdGenerator_Access_Array is org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References.QuoteRequestIdGenerator_Access_Array;
   function "=" (Left, Right : QuoteRequestIdGenerator_Access_Array) return Boolean renames org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References."=";
   subtype QuoteRequestIdGenerator_Access_Array_Access is org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References.QuoteRequestIdGenerator_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestIdGenerator_Access_Array_Access) return Boolean renames org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References."=";
   subtype QuoteRequestIdGenerator_Access_Array_Access_Array is org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References.QuoteRequestIdGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequestIdGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References."=";
   subtype QuoteRequestIdGenerator_Access_Array_Access_Array_Access is org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References.QuoteRequestIdGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestIdGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.QuoteRequestIdGenerator_Package_References."=";

   type QuoteRequestIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out QuoteRequestIdGenerator'Class);
   function Create return QuoteRequestIdGenerator_Access;

end org.allbinary.data.generator.QuoteRequestIdGenerator_Package;


