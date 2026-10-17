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


package body org.allbinary.image.PaintableToImageUtil_Package is

   procedure Initialize_Fields (This : in out PaintableToImageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PaintableToImageUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PaintableToImageUtil_Access is
      This : constant PaintableToImageUtil_Access := new PaintableToImageUtil;
   begin
      PaintableToImageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getImage (paintableInterface : PaintableInterface_Access; width : Integer; height : Integer) return Image_Access is
      image : Image_Access;
      graphics : Graphics_Access;
   begin
        image := GameFeatureImageCacheFactory_Package.getInstance.get (To_Unbounded_String (Ada.Tags.Expanded_Name (PaintableToImageUtil_Package.instance.all'Tag)), width, height);
        graphics := image.getGraphics;
        paintableInterface.paint (graphics);
        return image;
   end getImage;

   procedure getImage (paintableInterface : PaintableInterface_Access; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := getImage (paintableInterface, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

begin
   null;
   instance := PaintableToImageUtil_Package.Create;

end org.allbinary.image.PaintableToImageUtil_Package;


