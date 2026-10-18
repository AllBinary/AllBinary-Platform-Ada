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



package body org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package is

   procedure Initialize_Fields (This : in out DirectoryBooleanFileVisitor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DirectoryBooleanFileVisitor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DirectoryBooleanFileVisitor_Access is
      This : constant DirectoryBooleanFileVisitor_Access := new DirectoryBooleanFileVisitor;
   begin
      DirectoryBooleanFileVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out DirectoryBooleanFileVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return Java_Object_Access (DirectoryBooleanFileVisitor'Class (This).visit (AbFile_Access (anyType)));
   end visit;

   function visit (This : in out DirectoryBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        if file.isDirectory then
            return True;
        end if;
        return False;
   end visit;

   procedure visit (This : in out DirectoryBooleanFileVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := DirectoryBooleanFileVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out DirectoryBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Boolean := DirectoryBooleanFileVisitor'Class (This).visit (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out DirectoryBooleanFileVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return DirectoryBooleanFileVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out DirectoryBooleanFileVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := DirectoryBooleanFileVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package;


