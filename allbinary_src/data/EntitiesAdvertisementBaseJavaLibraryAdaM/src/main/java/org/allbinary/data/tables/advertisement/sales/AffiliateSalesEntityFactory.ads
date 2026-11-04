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

limited with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package;
package org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References is
   type AffiliateSalesEntityFactory_Access is access all org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package.AffiliateSalesEntityFactory'Class;
   type AffiliateSalesEntityFactory_Access_Array is array (Natural range <>) of AffiliateSalesEntityFactory_Access;
   type AffiliateSalesEntityFactory_Access_Array_Access is access all AffiliateSalesEntityFactory_Access_Array;
   type AffiliateSalesEntityFactory_Access_Array_Access_Array is array (Natural range <>) of AffiliateSalesEntityFactory_Access_Array_Access;
   type AffiliateSalesEntityFactory_Access_Array_Access_Array_Access is access all AffiliateSalesEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References;

with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package;
with org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References;

package org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package is

   package Reference_Types is
   subtype AffiliateSalesEntityInterface_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access;
   use type AffiliateSalesEntityInterface_Access;
   subtype AffiliateSalesEntityInterface_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array;
   use type AffiliateSalesEntityInterface_Access_Array;
   subtype AffiliateSalesEntityInterface_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array_Access;
   use type AffiliateSalesEntityInterface_Access_Array_Access;
   subtype AffiliateSalesEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array_Access_Array;
   use type AffiliateSalesEntityInterface_Access_Array_Access_Array;
   subtype AffiliateSalesEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityInterface_Package_References.AffiliateSalesEntityInterface_Access_Array_Access_Array_Access;
   use type AffiliateSalesEntityInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AffiliateSalesEntityFactory_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References.AffiliateSalesEntityFactory_Access;
   function "=" (Left, Right : AffiliateSalesEntityFactory_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References."=";
   subtype AffiliateSalesEntityFactory_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References.AffiliateSalesEntityFactory_Access_Array;
   function "=" (Left, Right : AffiliateSalesEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References."=";
   subtype AffiliateSalesEntityFactory_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References.AffiliateSalesEntityFactory_Access_Array_Access;
   function "=" (Left, Right : AffiliateSalesEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References."=";
   subtype AffiliateSalesEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References.AffiliateSalesEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AffiliateSalesEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References."=";
   subtype AffiliateSalesEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References.AffiliateSalesEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AffiliateSalesEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package_References."=";

   type AffiliateSalesEntityFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out AffiliateSalesEntityFactory'Class);
   function Create return AffiliateSalesEntityFactory_Access;
   function getInstance return AffiliateSalesEntityInterface_Access;

end org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory_Package;


