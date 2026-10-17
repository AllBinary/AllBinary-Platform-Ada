-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


package body org.allbinary.media.image.ImagePersistanceUtil_Package is

   procedure Initialize_Fields (This : in out ImagePersistanceUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ImagePersistanceUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImagePersistanceUtil_Access is
      This : constant ImagePersistanceUtil_Access := new ImagePersistanceUtil;
   begin
      ImagePersistanceUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImagePersistanceUtil_Access is
   begin
        return ImagePersistanceUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure saveWithBatik (This : in out ImagePersistanceUtil; file_Param : access AbFile'Class; bufferedImage_Param : access BufferedImage'Class) is
      file : AbFile_Access := AbFile_Access (file_Param);
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      batikPNGImageWriter : PNGImageWriter_Access;
      fileOutputStream : AbFileOutputStream_Access;
   begin
        batikPNGImageWriter := PNGImageWriter_Package.Create;
        fileOutputStream := AbFileOutputStream_Package.createFromAbFile (file);
        begin
            batikPNGImageWriter.writeImage (bufferedImage, fileOutputStream);
        end;
        --  finally
        begin
            fileOutputStream.flush;
            StreamUtil_Package.getInstance.close (fileOutputStream);
        end;
        This.logUtil.putF (To_Unbounded_String ("Wrote Image: ") & Java_Image (file.getAbsolutePath), ImagePersistanceUtil_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
   end saveWithBatik;

   procedure saveWithImageIO (This : in out ImagePersistanceUtil; filePath : Unbounded_String; bufferedImage_Param : access BufferedImage'Class) is
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        This.saveWithImageIO (File_Package.Create (filePath), bufferedImage);
   end saveWithImageIO;

   procedure saveWithImageIO (This : in out ImagePersistanceUtil; file_Param : access File'Class; bufferedImage_Param : access BufferedImage'Class) is
      file : File_Access := File_Access (file_Param);
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      writer : ImageWriter_Access;
      ios : ImageOutputStream_Access;
      iter : Iterator_Access;
      iwp : ImageWriteParam_Access;
   begin
        writer := null;
        ios := null;
        begin
            iter := ImageIO_Package.getImageWritersByFormatName (To_Unbounded_String ("jpeg"));
            if not (iter.hasNext) then
                This.logUtil.putF (To_Unbounded_String ("Unable to save image to jpeg file type."), ImagePersistanceUtil_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
                return;
            end if;
            writer := ImageWriter_Access (iter.next);
            ios := ImageIO_Package.createImageOutputStream (file);
            writer.setOutput (ios);
            iwp := writer.getDefaultWriteParam;
            iwp.setCompressionMode (ImageWriteParam_Package.MODE_EXPLICIT);
            iwp.setCompressionQuality (0.95);
            writer.write (null, IIOImage_Package.Create (bufferedImage, null, null), iwp);
            This.logUtil.putF (To_Unbounded_String ("Wrote Image: ") & Java_Image (file.getAbsolutePath), ImagePersistanceUtil_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImagePersistanceUtil_Access'(This'Unchecked_Access), This.commonStrings.SAVE, e);
                end;
        end;
        --  finally
        begin
            begin
                if (ios) /= (null) then
                    ios.flush;
                    begin
                        if (ios) /= (null) then
                            This.logUtil.putF (ios.toString, ios, This.commonStrings.CLOSE);
                            ios.close;
                        end if;
                    exception
                        when Java_Occurrence : others =>
                            declare
                                e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                            begin
                        This.logUtil.put (This.commonStrings.EXCEPTION_Id, ios, This.commonStrings.CLOSE, e);
                            end;
                    end;
                end if;
                if (writer) /= (null) then
                    writer.dispose;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImagePersistanceUtil_Access'(This'Unchecked_Access), This.commonStrings.SAVE, e2);
                    end;
            end;
        end;
   end saveWithImageIO;

begin
   null;
   instance := ImagePersistanceUtil_Package.Create;

end org.allbinary.media.image.ImagePersistanceUtil_Package;


