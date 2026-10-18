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


with org.allbinary.logic.io.file.FileWrapperUtil_Package; use org.allbinary.logic.io.file.FileWrapperUtil_Package;

package body org.allbinary.logic.io.file.filter.VisitorFileFilter_Package is

   package FileWrapperUtil_Package renames Standard.org.allbinary.logic.io.file.FileWrapperUtil_Package;
   procedure Initialize_Fields (This : in out VisitorFileFilter'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out VisitorFileFilter'Class; booleanVisitorInterface_Param : access VisitorInterface_Package.VisitorInterface'Class) is
      booleanVisitorInterface : constant VisitorInterface_Access := VisitorInterface_Access (booleanVisitorInterface_Param);
   begin
      Initialize_Fields (This);
        This.booleanVisitorInterface := booleanVisitorInterface;
   end Initialize;

   function Create (booleanVisitorInterface_Param : access VisitorInterface_Package.VisitorInterface'Class) return VisitorFileFilter_Access is
      This : constant VisitorFileFilter_Access := new VisitorFileFilter;
   begin
      VisitorFileFilter_Package.Initialize (This.all, booleanVisitorInterface_Param);
      return This;
   end Create;

   function accept_Id (This : in out VisitorFileFilter; file_Param : access File_Package.File'Class) return Boolean is
      file : constant File_Access := File_Access (file_Param);
      abFile : AbFile_Access;
      isFileAcceptable : Boolean;
   begin
        abFile := FileWrapperUtil_Package.wrapFile (file);
        isFileAcceptable := (Boolean (This.booleanVisitorInterface.visit (abFile))).booleanValue;
        return (isFileAcceptable) or else (file.isDirectory);
   end accept_Id;

   function accept_Id (This : in out VisitorFileFilter; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      isFileAcceptable : Boolean;
   begin
        isFileAcceptable := (Boolean (This.booleanVisitorInterface.visit (file))).booleanValue;
        return (isFileAcceptable) or else (file.isDirectory);
   end accept_Id;

   procedure accept_Id (This : in out VisitorFileFilter; file_Param : access File_Package.File'Class) is
      Java_Result : constant Boolean := VisitorFileFilter'Class (This).accept_Id (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end accept_Id;

   procedure accept_Id (This : in out VisitorFileFilter; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Boolean := VisitorFileFilter'Class (This).accept_Id (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end accept_Id;

end org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;


