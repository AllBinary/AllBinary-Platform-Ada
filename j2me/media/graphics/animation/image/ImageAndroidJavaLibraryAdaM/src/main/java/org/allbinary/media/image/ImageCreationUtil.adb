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
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.ImageCreationUtil_Package is

   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
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
   procedure Initialize_Fields (This : in out ImageCreationUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ImageCreationUtil_Access is
   begin
        return ImageCreationUtil_Access (ImageCreationUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ImageCreationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageCreationUtil_Access is
      This : constant ImageCreationUtil_Access := new ImageCreationUtil;
   begin
      ImageCreationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer) return Image_Access is
      image : Image_Access;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (Java_Object'Class (This)'Tag)), width, height);
        return image;
   end createImageWH;

   --  throws Exception
   function createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float) return Image_Access is
      image : Image_Access;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (Java_Object'Class (This)'Tag)), (Integer (((Float (width)) * (maxScaleX)))) + (1), (Integer (((Float (height)) * (maxScaleY)))) + (1));
        return image;
   end createImage;

   procedure createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCreationUtil'Class (This).createImageWH (width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageWH;

   procedure createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float) is
      Java_Result : constant Image_Access := ImageCreationUtil'Class (This).createImage (width => width, height => height, maxScaleX => maxScaleX, maxScaleY => maxScaleY);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

begin
   null;
   instance := ImageCreationUtil_Package.Create;

end org.allbinary.media.image.ImageCreationUtil_Package;


