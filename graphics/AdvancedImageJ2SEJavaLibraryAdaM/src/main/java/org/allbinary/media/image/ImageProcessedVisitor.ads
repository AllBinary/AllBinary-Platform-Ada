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

limited with org.allbinary.media.image.ImageProcessedVisitor_Package;
package org.allbinary.media.image.ImageProcessedVisitor_Package_References is
   type ImageProcessedVisitor_Access is access all org.allbinary.media.image.ImageProcessedVisitor_Package.ImageProcessedVisitor'Class;
   type ImageProcessedVisitor_Access_Array is array (Natural range <>) of ImageProcessedVisitor_Access;
   type ImageProcessedVisitor_Access_Array_Access is access all ImageProcessedVisitor_Access_Array;
   type ImageProcessedVisitor_Access_Array_Access_Array is array (Natural range <>) of ImageProcessedVisitor_Access_Array_Access;
   type ImageProcessedVisitor_Access_Array_Access_Array_Access is access all ImageProcessedVisitor_Access_Array_Access_Array;
end org.allbinary.media.image.ImageProcessedVisitor_Package_References;

with org.allbinary.media.image.ImageProcessedVisitor_Package_References;
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

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ImageProcessedVisitor is interface and ImageProcessorInputCompositeInterface;
   subtype ImageProcessedVisitor_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access;
   function "=" (Left, Right : ImageProcessedVisitor_Access) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   subtype ImageProcessedVisitor_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessedVisitor_Package_References.ImageProcessedVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageProcessedVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessedVisitor_Package_References."=";
   function Java_Object_Access_From_ImageProcessedVisitor (Value : ImageProcessedVisitor_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure visit (This : in out ImageProcessedVisitor; generatedBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; nameEnding : Unbounded_String; index : Integer) is abstract;

end org.allbinary.media.image.ImageProcessedVisitor_Package;


