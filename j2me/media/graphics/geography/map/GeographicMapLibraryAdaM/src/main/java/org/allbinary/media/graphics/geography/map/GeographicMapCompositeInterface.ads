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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package is


   type GeographicMapCompositeInterface is interface;
   type GeographicMapCompositeInterface_Access is access all GeographicMapCompositeInterface'Class;
   type GeographicMapCompositeInterface_Access_Array is array (Natural range <>) of GeographicMapCompositeInterface_Access;
   type GeographicMapCompositeInterface_Access_Array_Access is access all GeographicMapCompositeInterface_Access_Array;
   type GeographicMapCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCompositeInterface_Access_Array_Access;
   type GeographicMapCompositeInterface_Access_Array_Access_Array_Access is access all GeographicMapCompositeInterface_Access_Array_Access_Array;
   function geographicMapCellTypeArray (This : in out GeographicMapCompositeInterface) return GeographicMapCellType_Access_Array_Access is abstract;
   function getGeographicMapInterface (This : in out GeographicMapCompositeInterface) return BasicGeographicMap_Access_Array_Access is abstract;
   procedure setGeographicMapInterface (This : in out GeographicMapCompositeInterface; geographicMapInterface : BasicGeographicMap_Access_Array_Access) is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;


