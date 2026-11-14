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


with org.allbinary.logic.visual.media.MediaData_Package; use org.allbinary.logic.visual.media.MediaData_Package;
with org.allbinary.logic.visual.media.MediaData_Package_References;
with org.allbinary.logic.visual.media.MediaData_Package;

package body org.allbinary.logic.visual.media.MediaDataFactory_Package is

   subtype MediaData_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access;
   function "=" (Left, Right : MediaData_Access) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array;
   function "=" (Left, Right : MediaData_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access;
   function "=" (Left, Right : MediaData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array;
   function "=" (Left, Right : MediaData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   procedure Initialize_Fields (This : in out MediaDataFactory'Class) is
   begin
      null;
      This.AVI := MediaData_Package.Create (To_Unbounded_String ("avi"));
      This.BMP := MediaData_Package.Create (To_Unbounded_String ("bmp"));
      This.CEL := MediaData_Package.Create (To_Unbounded_String ("cel"));
      This.FITS := MediaData_Package.Create (To_Unbounded_String ("fits"));
      This.FLI := MediaData_Package.Create (To_Unbounded_String ("fli"));
      This.GBR := MediaData_Package.Create (To_Unbounded_String ("gbr"));
      This.GIF := MediaData_Package.Create (To_Unbounded_String ("gif"));
      This.GIH := MediaData_Package.Create (To_Unbounded_String ("gih"));
      This.JPG := MediaData_Package.Create (To_Unbounded_String ("jpg"));
      This.PIX := MediaData_Package.Create (To_Unbounded_String ("pix"));
      This.PNG := MediaData_Package.Create (To_Unbounded_String ("png"));
      This.PNM := MediaData_Package.Create (To_Unbounded_String ("pnm"));
      This.PSD := MediaData_Package.Create (To_Unbounded_String ("psd"));
      This.PSP := MediaData_Package.Create (To_Unbounded_String ("psp"));
      This.PS := MediaData_Package.Create (To_Unbounded_String ("ps"));
      This.SGI := MediaData_Package.Create (To_Unbounded_String ("SGI"));
      This.SWF := MediaData_Package.Create (To_Unbounded_String ("swf"));
      This.TGA := MediaData_Package.Create (To_Unbounded_String ("tga"));
      This.TIFF := MediaData_Package.Create (To_Unbounded_String ("tiff"));
      This.WMF := MediaData_Package.Create (To_Unbounded_String ("wmf"));
   end Initialize_Fields;

   procedure Initialize (This : in out MediaDataFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaDataFactory_Access is
      This : constant MediaDataFactory_Access := new MediaDataFactory;
   begin
      MediaDataFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MediaDataFactory_Access is
   begin
        return MediaDataFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := MediaDataFactory_Package.Create;

end org.allbinary.logic.visual.media.MediaDataFactory_Package;


