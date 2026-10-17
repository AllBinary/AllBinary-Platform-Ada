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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package is

   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;

   type TrackListenerInterface is interface;
   type TrackListenerInterface_Access is access all TrackListenerInterface'Class;
   type TrackListenerInterface_Access_Array is array (Natural range <>) of TrackListenerInterface_Access;
   type TrackListenerInterface_Access_Array_Access is access all TrackListenerInterface_Access_Array;
   procedure finished (This : in out TrackListenerInterface; layerInterface : AllBinaryLayer_Access) is abstract;

end org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package;


