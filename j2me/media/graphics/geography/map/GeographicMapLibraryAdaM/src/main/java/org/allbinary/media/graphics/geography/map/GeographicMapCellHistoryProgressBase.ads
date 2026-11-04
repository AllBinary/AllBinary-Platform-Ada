-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References is
   type GeographicMapCellHistoryProgressBase_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package.GeographicMapCellHistoryProgressBase'Class;
   type GeographicMapCellHistoryProgressBase_Access_Array is array (Natural range <>) of GeographicMapCellHistoryProgressBase_Access;
   type GeographicMapCellHistoryProgressBase_Access_Array_Access is access all GeographicMapCellHistoryProgressBase_Access_Array;
   type GeographicMapCellHistoryProgressBase_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellHistoryProgressBase_Access_Array_Access;
   type GeographicMapCellHistoryProgressBase_Access_Array_Access_Array_Access is access all GeographicMapCellHistoryProgressBase_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellHistoryProgressBase_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References.GeographicMapCellHistoryProgressBase_Access;
   function "=" (Left, Right : GeographicMapCellHistoryProgressBase_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References."=";
   subtype GeographicMapCellHistoryProgressBase_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References.GeographicMapCellHistoryProgressBase_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistoryProgressBase_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References."=";
   subtype GeographicMapCellHistoryProgressBase_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References.GeographicMapCellHistoryProgressBase_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistoryProgressBase_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References."=";
   subtype GeographicMapCellHistoryProgressBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References.GeographicMapCellHistoryProgressBase_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistoryProgressBase_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References."=";
   subtype GeographicMapCellHistoryProgressBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References.GeographicMapCellHistoryProgressBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistoryProgressBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package_References."=";

   type GeographicMapCellHistoryProgressBase is new Java_Object with null record;
   instance : GeographicMapCellHistoryProgressBase_Access;

   procedure Initialize (This : in out GeographicMapCellHistoryProgressBase'Class);
   function Create return GeographicMapCellHistoryProgressBase_Access;
   function getInstance return GeographicMapCellHistoryProgressBase_Access;
   procedure init (This : in out GeographicMapCellHistoryProgressBase);
   function isAnyProgress (This : in out GeographicMapCellHistoryProgressBase) return Boolean;

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package;


