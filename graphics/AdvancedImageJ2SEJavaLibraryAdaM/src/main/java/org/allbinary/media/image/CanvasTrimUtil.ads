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
--  with java.io.IOException_Package; use java.io.IOException_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.image.ImageProcessorInput_Package; use org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessedVisitor_Package; use org.allbinary.media.image.ImageProcessedVisitor_Package;

package org.allbinary.media.image.CanvasTrimUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type CanvasTrimUtil is tagged;
   type CanvasTrimUtil_Access is access all CanvasTrimUtil'Class;
   type CanvasTrimUtil_Access_Array is array (Natural range <>) of CanvasTrimUtil_Access;
   type CanvasTrimUtil_Access_Array_Access is access all CanvasTrimUtil_Access_Array;
   type CanvasTrimUtil_Access_Array_Access_Array is array (Natural range <>) of CanvasTrimUtil_Access_Array_Access;
   type CanvasTrimUtil_Access_Array_Access_Array_Access is access all CanvasTrimUtil_Access_Array_Access_Array;

   type CanvasTrimUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
   end record;
   instance : CanvasTrimUtil_Access;

   procedure Initialize (This : in out CanvasTrimUtil'Class);
   function Create return CanvasTrimUtil_Access;
   function getInstance return CanvasTrimUtil_Access;
   procedure process (This : in out CanvasTrimUtil; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class; cutCanvasFromLeftReduction : Integer; cutCanvasFromTopReduction : Integer; cutCanvasFromRightReduction : Integer; cutCanvasFromBottomReduction : Integer; visitor_Param : access ImageProcessedVisitor_Package.ImageProcessedVisitor'Class);

end org.allbinary.media.image.CanvasTrimUtil_Package;


