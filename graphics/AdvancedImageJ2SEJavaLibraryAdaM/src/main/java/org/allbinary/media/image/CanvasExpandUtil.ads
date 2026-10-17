-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;

package org.allbinary.media.image.CanvasExpandUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type CanvasExpandUtil is tagged;
   type CanvasExpandUtil_Access is access all CanvasExpandUtil'Class;
   type CanvasExpandUtil_Access_Array is array (Natural range <>) of CanvasExpandUtil_Access;
   type CanvasExpandUtil_Access_Array_Access is access all CanvasExpandUtil_Access_Array;

   type CanvasExpandUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
   end record;
   instance : CanvasExpandUtil_Access;

   procedure Initialize (This : in out CanvasExpandUtil'Class);
   function Create return CanvasExpandUtil_Access;
   function getInstance return CanvasExpandUtil_Access;
   procedure process (This : in out CanvasExpandUtil; imageProcessorInput : ImageProcessorInput_Access; increaseX : Integer; increaseY : Integer; visitor : ImageProcessedVisitor_Access);

end org.allbinary.media.image.CanvasExpandUtil_Package;


