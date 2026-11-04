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

limited with org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package;
package org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References is
   type BasicPlatormGeographicMapCellType_Access is access all org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package.BasicPlatormGeographicMapCellType'Class;
   type BasicPlatormGeographicMapCellType_Access_Array is array (Natural range <>) of BasicPlatormGeographicMapCellType_Access;
   type BasicPlatormGeographicMapCellType_Access_Array_Access is access all BasicPlatormGeographicMapCellType_Access_Array;
   type BasicPlatormGeographicMapCellType_Access_Array_Access_Array is array (Natural range <>) of BasicPlatormGeographicMapCellType_Access_Array_Access;
   type BasicPlatormGeographicMapCellType_Access_Array_Access_Array_Access is access all BasicPlatormGeographicMapCellType_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References;

with org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package is

   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicPlatormGeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access;
   function "=" (Left, Right : BasicPlatormGeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References."=";
   subtype BasicPlatormGeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array;
   function "=" (Left, Right : BasicPlatormGeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References."=";
   subtype BasicPlatormGeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : BasicPlatormGeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References."=";
   subtype BasicPlatormGeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPlatormGeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References."=";
   subtype BasicPlatormGeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References.BasicPlatormGeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPlatormGeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package_References."=";

   type BasicPlatormGeographicMapCellType is new Java_Object with record
      types : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out BasicPlatormGeographicMapCellType'Class; types_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (types_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicPlatormGeographicMapCellType_Access;
   function createType (type_Id : Integer) return BasicPlatormGeographicMapCellType_Access;
   procedure createType (type_Id : Integer);
   function isType (This : in out BasicPlatormGeographicMapCellType; type_Id_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean;
   procedure isType (This : in out BasicPlatormGeographicMapCellType; type_Id_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class);
   function hasType (This : in out BasicPlatormGeographicMapCellType; type_Id : Integer) return Boolean;
   procedure hasType (This : in out BasicPlatormGeographicMapCellType; type_Id : Integer);

end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellType_Package;


