-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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


package body org.allbinary.logic.io.file.directory.DirectoryFileVisitor_Package is

   procedure Initialize_Fields (This : in out DirectoryFileVisitor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DirectoryFileVisitor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DirectoryFileVisitor_Access is
      This : constant DirectoryFileVisitor_Access := new DirectoryFileVisitor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function accept_Id (This : in out DirectoryFileVisitor; arg0 : File_Access) return Boolean is
   begin
        return (Boolean (This.visit (Java_Object_Access (arg0)))).booleanValue;
   end accept_Id;

   function visit (This : in out DirectoryFileVisitor; anyType : Java_Object_Access) return Java_Object_Access is
      file : File_Access;
      index : Integer;
      aFile : File_Access;
   begin
        file := File_Access (anyType);
        index := 1;
        aFile := file.getParentFile;
        while ((Java_Assign (aFile, aFile.getParentFile))) /= (null) loop
            index := index + 1;
        end loop;
        if (file.isDirectory) and then ((index) < (5)) then
            return True;
        end if;
        return False;
   end visit;

   procedure accept_Id (This : in out DirectoryFileVisitor; arg0 : File_Access) is
      Java_Result : constant Boolean := DirectoryFileVisitor'Class (This).accept_Id (arg0);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end accept_Id;

   procedure visit (This : in out DirectoryFileVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := DirectoryFileVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.logic.io.file.directory.DirectoryFileVisitor_Package;


