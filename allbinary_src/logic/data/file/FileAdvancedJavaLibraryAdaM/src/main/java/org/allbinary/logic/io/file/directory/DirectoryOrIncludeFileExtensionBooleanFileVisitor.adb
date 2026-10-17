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


package body org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package is

   procedure Initialize_Fields (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access) is
   begin
        IncludeFileExtensionsBooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
        Initialize_Fields (This);
        This.includesString := Null_Unbounded_String;
   end Initialize;

   function Create (filterStringBasicArrayList : BasicArrayList_Access) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access is
      This : constant DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access := new DirectoryOrIncludeFileExtensionBooleanFileVisitor;
   begin
      DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class; filterStringBasicArrayList : BasicArrayList_Access; includesString : Unbounded_String) is
   begin
        IncludeFileExtensionsBooleanFileVisitor_Package.Initialize (This, filterStringBasicArrayList);
        Initialize_Fields (This);
        This.includesString := includesString;
   end Initialize;

   function Create (filterStringBasicArrayList : BasicArrayList_Access; includesString : Unbounded_String) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access is
      This : constant DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access := new DirectoryOrIncludeFileExtensionBooleanFileVisitor;
   begin
      DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package.Initialize (This.all, filterStringBasicArrayList, includesString);
      return This;
   end Create;

   function visit (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor; file : AbFile_Access) return Boolean is
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

   procedure visit (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor; file : AbFile_Access) is
      Java_Result : constant Boolean := DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class (This).visit (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package;


