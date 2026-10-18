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


with org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.io.file.filter.VisitorFileFilter_Package; use org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;

package body org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package is

   package IncludeFileExtensionsBooleanFileVisitor_Package renames Standard.org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out BasicFileFilterUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicFileFilterUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicFileFilterUtil_Access is
      This : constant BasicFileFilterUtil_Access := new BasicFileFilterUtil;
   begin
      BasicFileFilterUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (extension : Unbounded_String) return FileFilter_Access is
      vector : BasicArrayList_Access;
      includeFileExtensionsBooleanFileVisitor : IncludeFileExtensionsBooleanFileVisitor_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (extension);
        includeFileExtensionsBooleanFileVisitor := IncludeFileExtensionsBooleanFileVisitor_Package.Create (vector);
        return FileFilter_Access (VisitorFileFilter_Package.Create (includeFileExtensionsBooleanFileVisitor));
   end getInstance;

   procedure getInstance (extension : Unbounded_String) is
      Java_Result : constant FileFilter_Access := getInstance (extension => extension);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package;


