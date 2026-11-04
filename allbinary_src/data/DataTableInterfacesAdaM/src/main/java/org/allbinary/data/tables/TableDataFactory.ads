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

limited with org.allbinary.data.tables.TableDataFactory_Package;
package org.allbinary.data.tables.TableDataFactory_Package_References is
   type TableDataFactory_Access is access all org.allbinary.data.tables.TableDataFactory_Package.TableDataFactory'Class;
   type TableDataFactory_Access_Array is array (Natural range <>) of TableDataFactory_Access;
   type TableDataFactory_Access_Array_Access is access all TableDataFactory_Access_Array;
   type TableDataFactory_Access_Array_Access_Array is array (Natural range <>) of TableDataFactory_Access_Array_Access;
   type TableDataFactory_Access_Array_Access_Array_Access is access all TableDataFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.TableDataFactory_Package_References;

with org.allbinary.data.tables.TableDataFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.data.tables.TableDataFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TableDataFactory_Access is org.allbinary.data.tables.TableDataFactory_Package_References.TableDataFactory_Access;
   function "=" (Left, Right : TableDataFactory_Access) return Boolean renames org.allbinary.data.tables.TableDataFactory_Package_References."=";
   subtype TableDataFactory_Access_Array is org.allbinary.data.tables.TableDataFactory_Package_References.TableDataFactory_Access_Array;
   function "=" (Left, Right : TableDataFactory_Access_Array) return Boolean renames org.allbinary.data.tables.TableDataFactory_Package_References."=";
   subtype TableDataFactory_Access_Array_Access is org.allbinary.data.tables.TableDataFactory_Package_References.TableDataFactory_Access_Array_Access;
   function "=" (Left, Right : TableDataFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.TableDataFactory_Package_References."=";
   subtype TableDataFactory_Access_Array_Access_Array is org.allbinary.data.tables.TableDataFactory_Package_References.TableDataFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TableDataFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.TableDataFactory_Package_References."=";
   subtype TableDataFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.TableDataFactory_Package_References.TableDataFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TableDataFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.TableDataFactory_Package_References."=";

   type TableDataFactory is new Java_Object with record
      INTEGER_MAX_VALUE_STRING : Unbounded_String;
      ZERO_STRING : Unbounded_String;
   end record;
   instance : TableDataFactory_Access;

   procedure Initialize (This : in out TableDataFactory'Class);
   function Create return TableDataFactory_Access;
   function getInstance return TableDataFactory_Access;

end org.allbinary.data.tables.TableDataFactory_Package;


