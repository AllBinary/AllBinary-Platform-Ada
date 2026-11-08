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


with java.io.File_Package; use java.io.File_Package;
with java.io.FileFilter_Package; use java.io.FileFilter_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.FileWrapperUtil_Package; use org.allbinary.logic.io.file.FileWrapperUtil_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package_References;

package body org.allbinary.logic.io.file.filter.VisitorFileFilter_Package is

   package FileWrapperUtil_Package renames Standard.org.allbinary.logic.io.file.FileWrapperUtil_Package;
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
   subtype VisitorInterface_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access;
   function "=" (Left, Right : VisitorInterface_Access) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array;
   function "=" (Left, Right : VisitorInterface_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access;
   function "=" (Left, Right : VisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array_Access_Array is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
   subtype VisitorInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.VisitorInterface_Package_References."=";
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
        isFileAcceptable := Java_Unbox_Boolean (This.booleanVisitorInterface.visit (abFile)).booleanValue;
        return (isFileAcceptable) or else (file.isDirectory);
   end accept_Id;

   function accept_Id (This : in out VisitorFileFilter; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      isFileAcceptable : Boolean;
   begin
        isFileAcceptable := Java_Unbox_Boolean (This.booleanVisitorInterface.visit (file)).booleanValue;
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


