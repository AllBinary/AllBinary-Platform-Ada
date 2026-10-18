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

package org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;

   type CapturedImageInputOutput is tagged;
   type CapturedImageInputOutput_Access is access all CapturedImageInputOutput'Class;
   type CapturedImageInputOutput_Access_Array is array (Natural range <>) of CapturedImageInputOutput_Access;
   type CapturedImageInputOutput_Access_Array_Access is access all CapturedImageInputOutput_Access_Array;
   type CapturedImageInputOutput_Access_Array_Access_Array is array (Natural range <>) of CapturedImageInputOutput_Access_Array_Access;
   type CapturedImageInputOutput_Access_Array_Access_Array_Access is access all CapturedImageInputOutput_Access_Array_Access_Array;

   type CapturedImageInputOutput is new Java_Object and ImageIOInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CapturedImageInputOutput'Class);
   function Create return CapturedImageInputOutput_Access;
   procedure save (This : in out CapturedImageInputOutput; frame : Long_Long_Integer);
   procedure save (This : in out CapturedImageInputOutput; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; frame : Long_Long_Integer);

end org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;


