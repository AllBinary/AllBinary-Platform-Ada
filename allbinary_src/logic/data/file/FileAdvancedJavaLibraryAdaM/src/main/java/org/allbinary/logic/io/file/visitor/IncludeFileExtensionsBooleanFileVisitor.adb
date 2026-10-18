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


package body org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package is

   procedure Initialize_Fields (This : in out IncludeFileExtensionsBooleanFileVisitor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out IncludeFileExtensionsBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      filterStringBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (filterStringBasicArrayList_Param);
   begin
        BooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
   end Initialize;

   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return IncludeFileExtensionsBooleanFileVisitor_Access is
      This : constant IncludeFileExtensionsBooleanFileVisitor_Access := new IncludeFileExtensionsBooleanFileVisitor;
   begin
      IncludeFileExtensionsBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList_Param);
      return This;
   end Create;

   function visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        if (IncludeFileExtensionsBooleanFileVisitor'Class (This).getFilterStringBasicArrayList.size) = (0) then
            return False;
        end if;
        return BooleanFileVisitor (This).visit (file);
   end visit;

   function visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      fileNameAndExtension : Unbounded_String;
      startIndex : Integer;
      fileName : Unbounded_String;
   begin
        fileNameAndExtension := file.getPath;
        if (Length (fileNameAndExtension)) > (Length (fileNameString)) then
            startIndex := (Length (fileNameAndExtension)) - (Length (fileNameString));
            fileName := Unbounded_Slice (fileNameAndExtension, (startIndex) + 1, Length (fileNameAndExtension));
            if (Java_Compare_To (fileName, fileNameString)) = (0) then
                return True;
            end if;
        end if;
        return False;
   end visit;

   procedure visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Boolean := IncludeFileExtensionsBooleanFileVisitor'Class (This).visit (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := IncludeFileExtensionsBooleanFileVisitor'Class (This).visit (file_Param, fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;


