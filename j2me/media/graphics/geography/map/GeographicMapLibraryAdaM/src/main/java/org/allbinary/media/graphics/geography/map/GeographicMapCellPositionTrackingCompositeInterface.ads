--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTrackingCompositeInterface_Package is


   type GeographicMapCellPositionTrackingCompositeInterface is interface;
   type GeographicMapCellPositionTrackingCompositeInterface_Access is access all GeographicMapCellPositionTrackingCompositeInterface'Class;
   type GeographicMapCellPositionTrackingCompositeInterface_Access_Array is array (Natural range <>) of GeographicMapCellPositionTrackingCompositeInterface_Access;
   type GeographicMapCellPositionTrackingCompositeInterface_Access_Array_Access is access all GeographicMapCellPositionTrackingCompositeInterface_Access_Array;
   function getGeographicMapCellPositionTracking (This : in out GeographicMapCellPositionTrackingCompositeInterface) return GeographicMapCellPositionTracking_Access is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTrackingCompositeInterface_Package;


