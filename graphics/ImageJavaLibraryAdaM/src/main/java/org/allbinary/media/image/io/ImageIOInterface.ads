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

package org.allbinary.media.image.io.ImageIOInterface_Package is


   type ImageIOInterface is interface;
   type ImageIOInterface_Access is access all ImageIOInterface'Class;
   type ImageIOInterface_Access_Array is array (Natural range <>) of ImageIOInterface_Access;
   type ImageIOInterface_Access_Array_Access is access all ImageIOInterface_Access_Array;
   procedure save (This : in out ImageIOInterface; frame : Long_Long_Integer) is abstract;

end org.allbinary.media.image.io.ImageIOInterface_Package;


