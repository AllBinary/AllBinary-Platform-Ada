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

limited with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;
package org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References is
   type ImageProcessorInputCompositeInterface_Access is access all org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package.ImageProcessorInputCompositeInterface'Class;
   type ImageProcessorInputCompositeInterface_Access_Array is array (Natural range <>) of ImageProcessorInputCompositeInterface_Access;
   type ImageProcessorInputCompositeInterface_Access_Array_Access is access all ImageProcessorInputCompositeInterface_Access_Array;
   type ImageProcessorInputCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of ImageProcessorInputCompositeInterface_Access_Array_Access;
   type ImageProcessorInputCompositeInterface_Access_Array_Access_Array_Access is access all ImageProcessorInputCompositeInterface_Access_Array_Access_Array;
end org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References;

with org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.ImageProcessorInput_Package;
with org.allbinary.media.image.ImageProcessorInput_Package_References;

package org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package is

   package Reference_Types is
   subtype ImageProcessorInput_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access;
   use type ImageProcessorInput_Access;
   subtype ImageProcessorInput_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array;
   use type ImageProcessorInput_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access;
   subtype ImageProcessorInput_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array;
   use type ImageProcessorInput_Access_Array_Access_Array;
   subtype ImageProcessorInput_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInput_Package_References.ImageProcessorInput_Access_Array_Access_Array_Access;
   use type ImageProcessorInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ImageProcessorInputCompositeInterface is interface;
   subtype ImageProcessorInputCompositeInterface_Access is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access;
   function "=" (Left, Right : ImageProcessorInputCompositeInterface_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References."=";
   subtype ImageProcessorInputCompositeInterface_Access_Array is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array;
   function "=" (Left, Right : ImageProcessorInputCompositeInterface_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References."=";
   subtype ImageProcessorInputCompositeInterface_Access_Array_Access is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : ImageProcessorInputCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References."=";
   subtype ImageProcessorInputCompositeInterface_Access_Array_Access_Array is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ImageProcessorInputCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References."=";
   subtype ImageProcessorInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References.ImageProcessorInputCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageProcessorInputCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package_References."=";
   function Java_Object_Access_From_ImageProcessorInputCompositeInterface (Value : ImageProcessorInputCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getImageProcessorInput (This : in out ImageProcessorInputCompositeInterface) return ImageProcessorInput_Access is abstract;
   procedure setImageProcessorInput (This : in out ImageProcessorInputCompositeInterface; imageProcessorInput_Param : access ImageProcessorInput_Package.ImageProcessorInput'Class) is abstract;

end org.allbinary.media.image.ImageProcessorInputCompositeInterface_Package;


