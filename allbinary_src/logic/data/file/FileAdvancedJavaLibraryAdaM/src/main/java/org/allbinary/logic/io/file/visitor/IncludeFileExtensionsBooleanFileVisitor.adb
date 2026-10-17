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


   procedure Initialize (This : in out IncludeFileExtensionsBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access) is
   begin
        BooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
   end Initialize;

   function Create (filterStringBasicArrayList : BasicArrayList_Access) return IncludeFileExtensionsBooleanFileVisitor_Access is
      This : constant IncludeFileExtensionsBooleanFileVisitor_Access := new IncludeFileExtensionsBooleanFileVisitor;
   begin
      Initialize (This.all, filterStringBasicArrayList);
      return This;
   end Create;

   function visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file : AbFile_Access) return Boolean is
   begin
        if (This.getFilterStringBasicArrayList.size) = (0) then
            return False;
        end if;
        return BooleanFileVisitor (This).visit (file);
   end visit;

   function visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) return Boolean is
      fileNameAndExtension : Unbounded_String;
      startIndex : Integer;
      fileName : Unbounded_String;
   begin
        fileNameAndExtension := file.getPath;
        if (Length (fileNameAndExtension)) > (Length (fileNameString)) then
            startIndex := (Length (fileNameAndExtension)) - (Length (fileNameString));
            fileName := Unbounded_Slice (fileNameAndExtension, (startIndex) + 1, Length (fileNameAndExtension));
            if (fileName.compareTo (fileNameString)) = (0) then
                return True;
            end if;
        end if;
        return False;
   end visit;

   procedure visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file : AbFile_Access) is
      Java_Result : constant Boolean := IncludeFileExtensionsBooleanFileVisitor'Class (This).visit (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out IncludeFileExtensionsBooleanFileVisitor; file : AbFile_Access; fileNameString : Unbounded_String) is
      Java_Result : constant Boolean := IncludeFileExtensionsBooleanFileVisitor'Class (This).visit (file, fileNameString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;


