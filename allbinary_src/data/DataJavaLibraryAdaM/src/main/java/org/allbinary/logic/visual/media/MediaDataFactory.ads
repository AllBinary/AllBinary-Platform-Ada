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

with AllBinary_Java;
limited with org.allbinary.logic.visual.media.MediaDataFactory_Package;
package org.allbinary.logic.visual.media.MediaDataFactory_Package_References is
   type MediaDataFactory_Access is access all org.allbinary.logic.visual.media.MediaDataFactory_Package.MediaDataFactory'Class;
   type MediaDataFactory_Access_Array is array (Natural range <>) of MediaDataFactory_Access;
   type MediaDataFactory_Access_Array_Access is access all MediaDataFactory_Access_Array;
   type MediaDataFactory_Access_Array_Access_Array is array (Natural range <>) of MediaDataFactory_Access_Array_Access;
   type MediaDataFactory_Access_Array_Access_Array_Access is access all MediaDataFactory_Access_Array_Access_Array;
   type MediaDataFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaDataFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaDataFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaDataFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaDataFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaDataFactory_Access_Array_Access is (if Value /= null and then Value.all in MediaDataFactory_Access_Array_Object'Class then MediaDataFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MediaDataFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaDataFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaDataFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaDataFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaDataFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaDataFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MediaDataFactory_Access_Array_Access_Array_Object'Class then MediaDataFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.media.MediaDataFactory_Package_References;

with org.allbinary.logic.visual.media.MediaDataFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.media.MediaData_Package_References;

package org.allbinary.logic.visual.media.MediaDataFactory_Package is

   package Reference_Types is
   subtype MediaData_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access;
   use type MediaData_Access;
   subtype MediaData_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array;
   use type MediaData_Access_Array;
   subtype MediaData_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access;
   use type MediaData_Access_Array_Access;
   subtype MediaData_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array;
   use type MediaData_Access_Array_Access_Array;
   subtype MediaData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array_Access;
   use type MediaData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MediaDataFactory_Access is org.allbinary.logic.visual.media.MediaDataFactory_Package_References.MediaDataFactory_Access;
   function "=" (Left, Right : MediaDataFactory_Access) return Boolean renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References."=";
   subtype MediaDataFactory_Access_Array is org.allbinary.logic.visual.media.MediaDataFactory_Package_References.MediaDataFactory_Access_Array;
   function "=" (Left, Right : MediaDataFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References."=";
   subtype MediaDataFactory_Access_Array_Access is org.allbinary.logic.visual.media.MediaDataFactory_Package_References.MediaDataFactory_Access_Array_Access;
   function "=" (Left, Right : MediaDataFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References."=";
   function Java_Box (Value : MediaDataFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References.Java_Box;
   function Java_Unbox_MediaDataFactory_Access_Array (Value : access Java_Object'Class) return MediaDataFactory_Access_Array_Access renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References.Java_Unbox_MediaDataFactory_Access_Array;
   subtype MediaDataFactory_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaDataFactory_Package_References.MediaDataFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MediaDataFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References."=";
   subtype MediaDataFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaDataFactory_Package_References.MediaDataFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaDataFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References."=";
   function Java_Box (Value : MediaDataFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References.Java_Box;
   function Java_Unbox_MediaDataFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MediaDataFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.media.MediaDataFactory_Package_References.Java_Unbox_MediaDataFactory_Access_Array_Access_Array;

   type MediaDataFactory is new Java_Object with record
      AVI : MediaData_Access;
      BMP : MediaData_Access;
      CEL : MediaData_Access;
      FITS : MediaData_Access;
      FLI : MediaData_Access;
      GBR : MediaData_Access;
      GIF : MediaData_Access;
      GIH : MediaData_Access;
      JPG : MediaData_Access;
      PIX : MediaData_Access;
      PNG : MediaData_Access;
      PNM : MediaData_Access;
      PSD : MediaData_Access;
      PSP : MediaData_Access;
      PS : MediaData_Access;
      SGI : MediaData_Access;
      SWF : MediaData_Access;
      TGA : MediaData_Access;
      TIFF : MediaData_Access;
      WMF : MediaData_Access;
   end record;
   instance : MediaDataFactory_Access;

   procedure Initialize (This : in out MediaDataFactory'Class);
   function Create return MediaDataFactory_Access;
   function getInstance return MediaDataFactory_Access;

end org.allbinary.logic.visual.media.MediaDataFactory_Package;


