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

limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References is
   type GeographicMapCellHistoryProgress_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package.GeographicMapCellHistoryProgress'Class;
   type GeographicMapCellHistoryProgress_Access_Array is array (Natural range <>) of GeographicMapCellHistoryProgress_Access;
   type GeographicMapCellHistoryProgress_Access_Array_Access is access all GeographicMapCellHistoryProgress_Access_Array;
   type GeographicMapCellHistoryProgress_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellHistoryProgress_Access_Array_Access;
   type GeographicMapCellHistoryProgress_Access_Array_Access_Array_Access is access all GeographicMapCellHistoryProgress_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package is

   package Reference_Types is
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   use type GeographicMapCellHistory_Access;
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   use type GeographicMapCellHistory_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access;
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   use type GeographicMapCellHistory_Access_Array_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellHistoryProgress_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References.GeographicMapCellHistoryProgress_Access;
   function "=" (Left, Right : GeographicMapCellHistoryProgress_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References."=";
   subtype GeographicMapCellHistoryProgress_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References.GeographicMapCellHistoryProgress_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistoryProgress_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References."=";
   subtype GeographicMapCellHistoryProgress_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References.GeographicMapCellHistoryProgress_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistoryProgress_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References."=";
   subtype GeographicMapCellHistoryProgress_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References.GeographicMapCellHistoryProgress_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistoryProgress_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References."=";
   subtype GeographicMapCellHistoryProgress_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References.GeographicMapCellHistoryProgress_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistoryProgress_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package_References."=";

   type GeographicMapCellHistoryProgress is new GeographicMapCellHistoryProgressBase with record
      totalVisitedArray : Integer_Array_Access;
      geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellHistoryProgress'Class; geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access);
   function Create (geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access) return GeographicMapCellHistoryProgress_Access;
   procedure init (This : in out GeographicMapCellHistoryProgress);
   function isAnyProgress (This : in out GeographicMapCellHistoryProgress) return Boolean;

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package;


