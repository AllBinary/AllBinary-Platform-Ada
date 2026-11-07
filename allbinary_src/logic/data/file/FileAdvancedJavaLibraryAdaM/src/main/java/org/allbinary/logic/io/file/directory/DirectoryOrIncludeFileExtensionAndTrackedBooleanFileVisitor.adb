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


with org.allbinary.java.runtime.process.git.GitProcessHelper_Package; use org.allbinary.java.runtime.process.git.GitProcessHelper_Package;
with org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.CommonDataFileStrings_Package; use org.allbinary.logic.io.file.CommonDataFileStrings_Package;
with org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.io.file.directory.TrackedStrings_Package; use org.allbinary.logic.io.file.directory.TrackedStrings_Package;
with org.allbinary.logic.io.file.directory.TrackedStrings_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.io.file.directory.TrackedStrings_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package;

package body org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package is

   package CommonDataFileStrings_Package renames Standard.org.allbinary.logic.io.file.CommonDataFileStrings_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype GitProcessHelper_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access;
   function "=" (Left, Right : GitProcessHelper_Access) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   subtype GitProcessHelper_Access_Array is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array;
   function "=" (Left, Right : GitProcessHelper_Access_Array) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   subtype GitProcessHelper_Access_Array_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access;
   function "=" (Left, Right : GitProcessHelper_Access_Array_Access) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   subtype GitProcessHelper_Access_Array_Access_Array is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GitProcessHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
   subtype GitProcessHelper_Access_Array_Access_Array_Access is org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References.GitProcessHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GitProcessHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.java.runtime.process.git.GitProcessHelper_Package_References."=";
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype TrackedStrings_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access;
   function "=" (Left, Right : TrackedStrings_Access) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   subtype TrackedStrings_Access_Array is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array;
   function "=" (Left, Right : TrackedStrings_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   subtype TrackedStrings_Access_Array_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access;
   function "=" (Left, Right : TrackedStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   subtype TrackedStrings_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access_Array;
   function "=" (Left, Right : TrackedStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
   subtype TrackedStrings_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.TrackedStrings_Package_References.TrackedStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackedStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.TrackedStrings_Package_References."=";
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
            return IncludeFileExtensionsBooleanFileVisitor_Package.IncludeFileExtensionsBooleanFileVisitor (This).visit (file);
        else
            return False;
        end if;
   end visit;

   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      filePath : Unbounded_String;
   begin
        filePath := file.getPath;
        if IncludeFileExtensionsBooleanFileVisitor_Package.IncludeFileExtensionsBooleanFileVisitor (This).visit (file, fileNameString) then
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
      Java_Result : constant Boolean := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class (This).visit (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class (This).visit (file_Param => file_Param, fileNameString => fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;


