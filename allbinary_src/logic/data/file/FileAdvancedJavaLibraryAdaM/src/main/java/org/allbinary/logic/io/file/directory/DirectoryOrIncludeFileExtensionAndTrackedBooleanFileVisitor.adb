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


with org.allbinary.logic.io.file.CommonDataFileStrings_Package; use org.allbinary.logic.io.file.CommonDataFileStrings_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package is

   package CommonDataFileStrings_Package renames Standard.org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class) is
   begin
      null;
      This.trackedStrings := TrackedStrings_Package.getInstance;
      This.gitProcessHelper := GitProcessHelper_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      filterStringBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (filterStringBasicArrayList_Param);
   begin
        IncludeFileExtensionsBooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
        Initialize_Fields (This);
        This.includesString := Null_Unbounded_String;
   end Initialize;

   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access is
      This : constant DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access := new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor;
   begin
      DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList_Param);
      return This;
   end Create;

   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; includesString : Unbounded_String) is
      filterStringBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (filterStringBasicArrayList_Param);
   begin
        IncludeFileExtensionsBooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
        Initialize_Fields (This);
        This.includesString := includesString;
   end Initialize;

   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; includesString : Unbounded_String) return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access is
      This : constant DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access := new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor;
   begin
      DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList_Param, includesString);
      return This;
   end Create;

   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        if file.isDirectory then
            return True;
        end if;
        if ((This.includesString) = (Null_Unbounded_String)) or else ((file.getAbsolutePath.indexOf (This.includesString)) >= (0)) then
            return IncludeFileExtensionsBooleanFileVisitor (This).visit (file);
        else
            return False;
        end if;
   end visit;

   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      filePath : Unbounded_String;
   begin
        filePath := file.getPath;
        if IncludeFileExtensionsBooleanFileVisitor (This).visit (file, fileNameString) then
            if not (((((Index (filePath, Java_Image (This.trackedStrings.APPLICATION)) > 0)) or else ((Index (filePath, Java_Image (This.trackedStrings.APP)) > 0))) or else ((Index (filePath, Java_Image (This.trackedStrings.HTML_TEMP)) > 0)))) then
                if not ((((Index (filePath, Java_Image (This.trackedStrings.TARGET_PATH_WINDOWS)) > 0)) or else ((Index (filePath, Java_Image (This.trackedStrings.TARGET_PATH_UNIX)) > 0)))) then
                    if This.gitProcessHelper.isTracked (file) then
                        return True;
                    else
                        null;
                    end if;
                else
                    null;
                end if;
            else
                null;
            end if;
        end if;
        return False;
   end visit;

   procedure main (args : Unbounded_String_Array_Access) is
      commonFileStrings : CommonDataFileStrings_Access;
      list : BasicArrayList_Access;
      filePath : Unbounded_String;
      result : Boolean;
   begin
        commonFileStrings := CommonDataFileStrings_Package.getInstance;
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        list.add (commonFileStrings.JAVA);
        filePath := To_Unbounded_String ("G:\mnt\bc\mydev\games\ZeptoRacer\platform\j2se\ZeptoRacerStaticPathsJ2SEM\" & ASCII.HT & "arget\dependency\org\allbinary\logic\system\security\licensing\ZeptoRacerPCClientInformation.java");
        result := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Create (list).visit (AbFile_Package.createAbFileFromRawPath (filePath));
        Ada.Text_IO.Put_Line (Java_Image (filePath & To_Unbounded_String (" is Tracked: ") & Java_Image (result)));
   end main;

   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Boolean := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class (This).visit (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class (This).visit (file_Param, fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;


