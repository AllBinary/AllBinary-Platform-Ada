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


with org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package; use org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package;
with org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package; use org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;
with org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package; use org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package;
with org.allbinary.logic.io.file.filter.VisitorFileFilter_Package; use org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;

package body org.allbinary.logic.io.file.FileListFetcher_Package is

   package DirectoryBooleanFileVisitor_Package renames Standard.org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package;
   package DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package renames Standard.org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;
   package DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package renames Standard.org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package;
   package VisitorFileFilter_Package renames Standard.org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out FileListFetcher'Class) is
   begin
      null;
      This.subDirectory := SubDirectory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out FileListFetcher'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FileListFetcher_Access is
      This : constant FileListFetcher_Access := new FileListFetcher;
   begin
      FileListFetcher_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FileListFetcher_Access is
   begin
        return FileListFetcher_Package.instance;
   end getInstance;

   function getFiles (This : in out FileListFetcher; path : Unbounded_String) return BasicArrayList_Access is
      files : BasicArrayList_Access;
   begin
        begin
            files := This.subDirectory.search (AbFile_Package.createAbFile (path));
            return files;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e) & To_Unbounded_String ("" & ASCII.LF & "Msg: ") & Java_Get_Message (e)));
                end;
        end;
        return null;
   end getFiles;

   function getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access) return BasicArrayList_Access is
      includeExtensionBasicArrayList : BasicArrayList_Access;
      size : Integer;
      index : Integer;
      visitorFileFilter : VisitorFileFilter_Access;
      files : BasicArrayList_Access;
   begin
        begin
            includeExtensionBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            size := includeExtensions'Length;
            for index in 0 .. (size) - 1 loop
                includeExtensionBasicArrayList.add (includeExtensions (index));
            end loop;
            visitorFileFilter := VisitorFileFilter_Package.Create (DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package.Create (includeExtensionBasicArrayList));
            files := This.subDirectory.search (visitorFileFilter, AbFile_Package.createAbFile (path));
            return files;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e) & To_Unbounded_String ("" & ASCII.LF & "Msg: ") & Java_Get_Message (e)));
                end;
        end;
        return null;
   end getFiles;

   function getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String) return BasicArrayList_Access is
      includeExtensionBasicArrayList : BasicArrayList_Access;
      visitorFileFilter : VisitorFileFilter_Access;
      files : BasicArrayList_Access;
   begin
        begin
            includeExtensionBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            includeExtensionBasicArrayList.add (includeExtension);
            visitorFileFilter := VisitorFileFilter_Package.Create (DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package.Create (includeExtensionBasicArrayList));
            files := This.subDirectory.search (visitorFileFilter, AbFile_Package.createAbFile (path));
            return files;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e) & To_Unbounded_String ("" & ASCII.LF & "Msg: ") & Java_Get_Message (e)));
                end;
        end;
        return null;
   end getFiles;

   function getFiles (This : in out FileListFetcher; path : Unbounded_String; pathIncludes : Unbounded_String; includeExtension : Unbounded_String) return BasicArrayList_Access is
      includeExtensionBasicArrayList : BasicArrayList_Access;
      visitorFileFilter : VisitorFileFilter_Access;
      files : BasicArrayList_Access;
   begin
        begin
            includeExtensionBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            includeExtensionBasicArrayList.add (includeExtension);
            visitorFileFilter := VisitorFileFilter_Package.Create (DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package.Create (includeExtensionBasicArrayList, pathIncludes));
            files := This.subDirectory.search (visitorFileFilter, AbFile_Package.createAbFile (path));
            return files;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e) & To_Unbounded_String ("" & ASCII.LF & "Msg: ") & Java_Get_Message (e)));
                end;
        end;
        return null;
   end getFiles;

   function getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access) return BasicArrayList_Access is
      includeExtensionBasicArrayList : BasicArrayList_Access;
      size : Integer;
      index : Integer;
      visitorFileFilter : VisitorFileFilter_Access;
      files : BasicArrayList_Access;
   begin
        begin
            includeExtensionBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            size := includeExtensions'Length;
            for index in 0 .. (size) - 1 loop
                includeExtensionBasicArrayList.add (includeExtensions (index));
            end loop;
            visitorFileFilter := VisitorFileFilter_Package.Create (DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Create (includeExtensionBasicArrayList));
            files := This.subDirectory.search (visitorFileFilter, AbFile_Package.createAbFile (path));
            return files;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e) & To_Unbounded_String ("" & ASCII.LF & "Msg: ") & Java_Get_Message (e)));
                end;
        end;
        return null;
   end getTrackedFiles;

   function getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String) return BasicArrayList_Access is
      includeExtensionBasicArrayList : BasicArrayList_Access;
      visitorFileFilter : VisitorFileFilter_Access;
      files : BasicArrayList_Access;
   begin
        begin
            includeExtensionBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            includeExtensionBasicArrayList.add (includeExtension);
            visitorFileFilter := VisitorFileFilter_Package.Create (DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Create (includeExtensionBasicArrayList));
            files := This.subDirectory.search (visitorFileFilter, AbFile_Package.createAbFile (path));
            return files;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e) & To_Unbounded_String ("" & ASCII.LF & "Msg: ") & Java_Get_Message (e)));
                end;
        end;
        return null;
   end getTrackedFiles;

   function getDirectories (This : in out FileListFetcher; path : Unbounded_String) return BasicArrayList_Access is
      visitorFileFilter : VisitorFileFilter_Access;
      files : BasicArrayList_Access;
   begin
        begin
            visitorFileFilter := VisitorFileFilter_Package.Create (DirectoryBooleanFileVisitor_Package.Create);
            files := This.subDirectory.search (visitorFileFilter, AbFile_Package.createAbFile (path));
            return files;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Print_Stack_Trace (e);
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e) & To_Unbounded_String ("" & ASCII.LF & "Msg: ") & Java_Get_Message (e)));
                end;
        end;
        return null;
   end getDirectories;

   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := FileListFetcher'Class (This).getFiles (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFiles;

   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access) is
      Java_Result : constant BasicArrayList_Access := FileListFetcher'Class (This).getFiles (path, includeExtensions);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFiles;

   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := FileListFetcher'Class (This).getFiles (path, includeExtension);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFiles;

   procedure getFiles (This : in out FileListFetcher; path : Unbounded_String; pathIncludes : Unbounded_String; includeExtension : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := FileListFetcher'Class (This).getFiles (path, pathIncludes, includeExtension);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFiles;

   procedure getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtensions : Unbounded_String_Array_Access) is
      Java_Result : constant BasicArrayList_Access := FileListFetcher'Class (This).getTrackedFiles (path, includeExtensions);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackedFiles;

   procedure getTrackedFiles (This : in out FileListFetcher; path : Unbounded_String; includeExtension : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := FileListFetcher'Class (This).getTrackedFiles (path, includeExtension);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackedFiles;

   procedure getDirectories (This : in out FileListFetcher; path : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := FileListFetcher'Class (This).getDirectories (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDirectories;

begin
   null;
   instance := FileListFetcher_Package.Create;

end org.allbinary.logic.io.file.FileListFetcher_Package;


