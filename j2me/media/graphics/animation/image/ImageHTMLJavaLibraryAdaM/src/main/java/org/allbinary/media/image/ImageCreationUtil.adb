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


package body org.allbinary.media.image.ImageCreationUtil_Package is

   procedure Initialize_Fields (This : in out ImageCreationUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ImageCreationUtil_Access is
   begin
        return ImageCreationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageCreationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageCreationUtil_Access is
      This : constant ImageCreationUtil_Access := new ImageCreationUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer) return Image_Access is
      image : Image_Access;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)), width, height);
        return image;
   end createImageWH;

   --  throws Exception
   function createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float) return Image_Access is
      image : Image_Access;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)), (Integer (((Float (width)) * (maxScaleX)))) + (1), (Integer (((Float (height)) * (maxScaleY)))) + (1));
        return image;
   end createImage;

   procedure getInstance is
      Java_Result : constant ImageCreationUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageCreationUtil'Class (This).createImageWH (width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageWH;

   procedure createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float) is
      Java_Result : constant Image_Access := ImageCreationUtil'Class (This).createImage (width, height, maxScaleX, maxScaleY);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

begin
   null;
   instance := ImageCreationUtil_Package.Create;

end org.allbinary.media.image.ImageCreationUtil_Package;


