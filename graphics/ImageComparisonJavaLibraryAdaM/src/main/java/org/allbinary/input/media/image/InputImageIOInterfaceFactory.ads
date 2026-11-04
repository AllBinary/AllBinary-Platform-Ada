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

limited with org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;
package org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References is
   type InputImageIOInterfaceFactory_Access is access all org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package.InputImageIOInterfaceFactory'Class;
   type InputImageIOInterfaceFactory_Access_Array is array (Natural range <>) of InputImageIOInterfaceFactory_Access;
   type InputImageIOInterfaceFactory_Access_Array_Access is access all InputImageIOInterfaceFactory_Access_Array;
   type InputImageIOInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of InputImageIOInterfaceFactory_Access_Array_Access;
   type InputImageIOInterfaceFactory_Access_Array_Access_Array_Access is access all InputImageIOInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References;

with org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.io.ImageIOInterface_Package;
with org.allbinary.media.image.io.ImageIOInterface_Package_References;
limited with org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.input.media.image.InputImageType_Package_References;

package org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package is

   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;
   package Reference_Types is
   subtype ImageIOInterface_Access is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access;
   use type ImageIOInterface_Access;
   subtype ImageIOInterface_Access_Array is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array;
   use type ImageIOInterface_Access_Array;
   subtype ImageIOInterface_Access_Array_Access is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array_Access;
   use type ImageIOInterface_Access_Array_Access;
   subtype ImageIOInterface_Access_Array_Access_Array is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array_Access_Array;
   use type ImageIOInterface_Access_Array_Access_Array;
   subtype ImageIOInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.io.ImageIOInterface_Package_References.ImageIOInterface_Access_Array_Access_Array_Access;
   use type ImageIOInterface_Access_Array_Access_Array_Access;
   subtype InputImageType_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access;
   use type InputImageType_Access;
   subtype InputImageType_Access_Array is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array;
   use type InputImageType_Access_Array;
   subtype InputImageType_Access_Array_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access;
   use type InputImageType_Access_Array_Access;
   subtype InputImageType_Access_Array_Access_Array is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access_Array;
   use type InputImageType_Access_Array_Access_Array;
   subtype InputImageType_Access_Array_Access_Array_Access is org.allbinary.input.media.image.InputImageType_Package_References.InputImageType_Access_Array_Access_Array_Access;
   use type InputImageType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputImageIOInterfaceFactory_Access is org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References.InputImageIOInterfaceFactory_Access;
   function "=" (Left, Right : InputImageIOInterfaceFactory_Access) return Boolean renames org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References."=";
   subtype InputImageIOInterfaceFactory_Access_Array is org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References.InputImageIOInterfaceFactory_Access_Array;
   function "=" (Left, Right : InputImageIOInterfaceFactory_Access_Array) return Boolean renames org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References."=";
   subtype InputImageIOInterfaceFactory_Access_Array_Access is org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References.InputImageIOInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : InputImageIOInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References."=";
   subtype InputImageIOInterfaceFactory_Access_Array_Access_Array is org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References.InputImageIOInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputImageIOInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References."=";
   subtype InputImageIOInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References.InputImageIOInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputImageIOInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package_References."=";

   type InputImageIOInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out InputImageIOInterfaceFactory'Class);
   function Create return InputImageIOInterfaceFactory_Access;
   function getInstance (imageType_Param : access InputImageType_Package.InputImageType'Class) return ImageIOInterface_Access;
   procedure getInstance (imageType_Param : access InputImageType_Package.InputImageType'Class);

end org.allbinary.input.media.image.InputImageIOInterfaceFactory_Package;


