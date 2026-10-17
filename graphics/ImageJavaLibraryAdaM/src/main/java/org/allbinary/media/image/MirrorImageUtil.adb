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


package body org.allbinary.media.image.MirrorImageUtil_Package is

   procedure Initialize_Fields (This : in out MirrorImageUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.imageUtil := ImageUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return MirrorImageUtil_Access is
   begin
        return MirrorImageUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out MirrorImageUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MirrorImageUtil_Access is
      This : constant MirrorImageUtil_Access := new MirrorImageUtil;
   begin
      MirrorImageUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getImage (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage'Class; verticle : Boolean; horizontal : Boolean) return BufferedImage_Access is
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      newBufferedImage : BufferedImage_Access;
      g : Graphics2D_Access;
      tx : AffineTransform_Access;
      op : AffineTransformOp_Access;
   begin
        This.logUtil.putF (To_Unbounded_String ("Starting"), MirrorImageUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getImage"));
        newBufferedImage := This.imageUtil.create (bufferedImage.getWidth (null), bufferedImage.getHeight (null));
        g := newBufferedImage.createGraphics;
        if verticle then
            tx := AffineTransform_Package.getScaleInstance (1, -(1));
            tx.translate (0, -(bufferedImage.getHeight (null)));
            op := AffineTransformOp_Package.Create (tx, AffineTransformOp_Package.TYPE_NEAREST_NEIGHBOR);
            bufferedImage := op.filter (bufferedImage, null);
        end if;
        if horizontal then
            tx := AffineTransform_Package.getScaleInstance (-(1), 1);
            tx.translate (-(bufferedImage.getWidth (null)), 0);
            op := AffineTransformOp_Package.Create (tx, AffineTransformOp_Package.TYPE_NEAREST_NEIGHBOR);
            bufferedImage := op.filter (bufferedImage, null);
        end if;
        g.drawImage (bufferedImage, 0, 0, bufferedImage.getWidth (null), bufferedImage.getHeight (null), null);
        g.dispose;
        return newBufferedImage;
   end getImage;

   function getImages (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage'Class; verticle : Boolean; horizontal : Boolean) return BufferedImage_Access_Array_Access is
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      width : Integer;
      height : Integer;
      cellHeight : Integer;
      cellWidth : Integer;
      numberOfFramesPerOrientation : Integer;
      numberOfFrames : Integer;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      y : Integer;
      x : Integer;
      index : Integer;
   begin
        width := bufferedImage.getWidth;
        height := bufferedImage.getHeight;
        cellHeight := height;
        cellWidth := height;
        numberOfFramesPerOrientation := (width) / (cellWidth);
        numberOfFrames := numberOfFramesPerOrientation;
        if verticle then
            numberOfFrames := (numberOfFrames) * (2);
        end if;
        if horizontal then
            numberOfFrames := (numberOfFrames) * (2);
        end if;
        This.logUtil.putF (To_Unbounded_String ("numberOfFramesPerOrientation: ") & Java_Image (numberOfFramesPerOrientation) & To_Unbounded_String (" numberOfFrames: ") & Java_Image (numberOfFrames), MirrorImageUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getImages"));
        bufferedImageArray := new BufferedImage_Access_Array'(0 .. (numberOfFrames) - 1 => null);
        y := 0;
        for index in 0 .. (numberOfFramesPerOrientation) - 1 loop
            x := (index) * (cellWidth);
            bufferedImageArray (index) := bufferedImage.getSubimage (x, y, cellWidth, cellHeight);
        end loop;
        for index in 0 .. (numberOfFramesPerOrientation) - 1 loop
            bufferedImageArray ((index) + (numberOfFramesPerOrientation)) := This.getImage (bufferedImageArray (index), verticle, horizontal);
        end loop;
        return bufferedImageArray;
   end getImages;

   procedure getImage (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage'Class; verticle : Boolean; horizontal : Boolean) is
      Java_Result : constant BufferedImage_Access := MirrorImageUtil'Class (This).getImage (bufferedImage_Param, verticle, horizontal);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

   procedure getImages (This : in out MirrorImageUtil; bufferedImage_Param : access BufferedImage'Class; verticle : Boolean; horizontal : Boolean) is
      Java_Result : constant BufferedImage_Access_Array_Access := MirrorImageUtil'Class (This).getImages (bufferedImage_Param, verticle, horizontal);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImages;

begin
   null;
   instance := MirrorImageUtil_Package.Create;

end org.allbinary.media.image.MirrorImageUtil_Package;


