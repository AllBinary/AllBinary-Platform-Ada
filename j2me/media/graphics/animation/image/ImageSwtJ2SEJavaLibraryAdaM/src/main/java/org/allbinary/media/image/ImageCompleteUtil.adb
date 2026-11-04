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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;

package body org.allbinary.media.image.ImageCompleteUtil_Package is

   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   procedure Initialize_Fields (This : in out ImageCompleteUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageCompleteUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageCompleteUtil_Access is
      This : constant ImageCompleteUtil_Access := new ImageCompleteUtil;
   begin
      ImageCompleteUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageCompleteUtil_Access is
   begin
        return ImageCompleteUtil_Access (ImageCompleteUtil_Package.instance);
   end getInstance;

   --  throws Exception
   procedure waitForImage (This : in out ImageCompleteUtil; image_Param : access Image_Package.Image'Class; name : Unbounded_String) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end waitForImage;

begin
   null;
   instance := ImageCompleteUtil_Package.Create;

end org.allbinary.media.image.ImageCompleteUtil_Package;


