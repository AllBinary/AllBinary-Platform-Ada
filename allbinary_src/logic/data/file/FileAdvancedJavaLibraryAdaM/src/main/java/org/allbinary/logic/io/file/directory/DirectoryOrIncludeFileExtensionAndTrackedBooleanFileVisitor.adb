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


package body org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package is

   procedure Initialize_Fields (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class) is
   begin
      null;
      This.trackedStrings := TrackedStrings_Package.getInstance;
      This.gitProcessHelper := GitProcessHelper_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access) is
   begin
        IncludeFileExtensionsBooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
        Initialize_Fields (This);
        This.includesString := Null_Unbounded_String;
   end Initialize;

   function Create (filterStringBasicArrayList : BasicArrayList_Access) return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access is
      This : constant DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access := new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor;
   begin
      DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access; includesString : Unbounded_String) is
   begin
        IncludeFileExtensionsBooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
        Initialize_Fields (This);
        This.includesString := includesString;
   end Initialize;

   function Create (filterStringBasicArrayList : BasicArrayList_Access; includesString : Unbounded_String) return DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access is
      This : constant DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Access := new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor;
   begin
      DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList, includesString);
      return This;
   end Create;

   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access) return Boolean is
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

   function visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) return Boolean is
      filePath : Unbounded_String;
   begin
        filePath := file.getPath;
        if IncludeFileExtensionsBooleanFileVisitor (This).visit (file, fileNameString) then
            if not (((((Index (filePath, To_String (This.trackedStrings.APPLICATION)) > 0)) or else ((Index (filePath, To_String (This.trackedStrings.APP)) > 0))) or else ((Index (filePath, To_String (This.trackedStrings.HTML_TEMP)) > 0)))) then
                if not ((((Index (filePath, To_String (This.trackedStrings.TARGET_PATH_WINDOWS)) > 0)) or else ((Index (filePath, To_String (This.trackedStrings.TARGET_PATH_UNIX)) > 0)))) then
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
        list := BasicArrayListD_Package.Create;
        list.add (commonFileStrings.JAVA);
        filePath := To_Unbounded_String ("G:\mnt\bc\mydev\games\ZeptoRacer\platform\j2se\ZeptoRacerStaticPathsJ2SEM\" & ASCII.HT & "arget\dependency\org\allbinary\logic\system\security\licensing\ZeptoRacerPCClientInformation.java");
        result := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package.Create (list).visit (AbFile_Package.createAbFileFromRawPath (filePath));
        Ada.Text_IO.Put_Line (Java_Image (filePath & To_Unbounded_String (" is Tracked: ") & Java_Image (result)));
   end main;

   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access) is
      Java_Result : constant Boolean := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class (This).visit (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor'Class (This).visit (file, fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor_Package;


