-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.apache.batik.ext.awt.image.codec.png.PNGImageWriter_Package; use org.apache.batik.ext.awt.image.codec.png.PNGImageWriter_Package;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.ImagePersistanceUtil_Package is

   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package PNGImageWriter_Package renames Standard.org.apache.batik.ext.awt.image.codec.png.PNGImageWriter_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   function "=" (Left, Right : AbFile_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.AbFile_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
   procedure saveWithBatik (This : in out ImagePersistanceUtil; file_Param : access AbFile_Package.AbFile'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
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
        This.logUtil.putF (To_Unbounded_String ("Wrote Image: ") & file.getAbsolutePath, ImagePersistanceUtil_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
   end saveWithBatik;

   procedure saveWithImageIO (This : in out ImagePersistanceUtil; filePath : Unbounded_String; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        ImagePersistanceUtil'Class (This).saveWithImageIO (File_Package.Create (filePath), bufferedImage);
   end saveWithImageIO;

   procedure saveWithImageIO (This : in out ImagePersistanceUtil; file_Param : access File_Package.File'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      file : constant File_Access := File_Access (file_Param);
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
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


