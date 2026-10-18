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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;

package org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;

   type ComparisonImageInputOutput is tagged;
   type ComparisonImageInputOutput_Access is access all ComparisonImageInputOutput'Class;
   type ComparisonImageInputOutput_Access_Array is array (Natural range <>) of ComparisonImageInputOutput_Access;
   type ComparisonImageInputOutput_Access_Array_Access is access all ComparisonImageInputOutput_Access_Array;
   type ComparisonImageInputOutput_Access_Array_Access_Array is array (Natural range <>) of ComparisonImageInputOutput_Access_Array_Access;
   type ComparisonImageInputOutput_Access_Array_Access_Array_Access is access all ComparisonImageInputOutput_Access_Array_Access_Array;

   type ComparisonImageInputOutput is new Java_Object and ImageIOInterface with record
      logUtil : LogUtil_Access;
   end record;
   ROOT_NAME : Unbounded_String;

   procedure Initialize (This : in out ComparisonImageInputOutput'Class);
   function Create return ComparisonImageInputOutput_Access;
   procedure save (This : in out ComparisonImageInputOutput; frame : Long_Long_Integer);
   procedure save (This : in out ComparisonImageInputOutput; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer);

end org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;


