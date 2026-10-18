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


with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;

package body org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   procedure Initialize_Fields (This : in out LogoImageFileUtil'Class) is
   begin
      null;
      This.directory := Directory_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LogoImageFileUtil'Class; imageAbPath_Param : access AbPath_Package.AbPath'Class; imageFile : Unbounded_String) is
      imageAbPath : constant AbPath_Access := AbPath_Access (imageAbPath_Param);
   begin
      Initialize_Fields (This);
        This.fileName := imageFile;
        This.imageFileAbPath := imageAbPath;
   end Initialize;

   function Create (imageAbPath_Param : access AbPath_Package.AbPath'Class; imageFile : Unbounded_String) return LogoImageFileUtil_Access is
      This : constant LogoImageFileUtil_Access := new LogoImageFileUtil;
   begin
      LogoImageFileUtil_Package.Initialize (This.all, imageAbPath_Param, imageFile);
      return This;
   end Create;

   --  throws Exception
   procedure saveFiles (This : in out LogoImageFileUtil; fileItem_Param : access FileItem_Package.FileItem'Class) is
      fileItem : constant FileItem_Access := FileItem_Access (fileItem_Param);
      originalImageFile : AbFile_Access;
   begin
        if (This.fileName) = (Null_Unbounded_String) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Image File Name Was Null")));
        end if;
        if not (This.directory.create (This.imageFileAbPath)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to save file to non creatable directory")));
        end if;
        originalImageFile := AbFile_Package.createAbFile (This.imageFileAbPath.toString & This.fileName);
        originalImageFile.createNewFile;
        FileUtil_Package.getInstance.write (ByteArrayInputStream_Package.Create (fileItem.get), originalImageFile);
   end saveFiles;

end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil_Package;


