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
with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package; use org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;

package org.allbinary.media.image.ImageProcessedVisitor_Package is


   type ImageProcessedVisitor is interface and ImageProcessorInputCompositeInterface;
   type ImageProcessedVisitor_Access is access all ImageProcessedVisitor'Class;
   type ImageProcessedVisitor_Access_Array is array (Natural range <>) of ImageProcessedVisitor_Access;
   type ImageProcessedVisitor_Access_Array_Access is access all ImageProcessedVisitor_Access_Array;
   type ImageProcessedVisitor_Access_Array_Access_Array is array (Natural range <>) of ImageProcessedVisitor_Access_Array_Access;
   type ImageProcessedVisitor_Access_Array_Access_Array_Access is access all ImageProcessedVisitor_Access_Array_Access_Array;
   procedure visit (This : in out ImageProcessedVisitor; generatedBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; nameEnding : Unbounded_String; index : Integer) is abstract;

end org.allbinary.media.image.ImageProcessedVisitor_Package;


