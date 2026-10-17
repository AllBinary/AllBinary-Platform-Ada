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


package body org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package is

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
        vector := BasicArrayListD_Package.Create;
        vector.add (extension);
        includeFileExtensionsBooleanFileVisitor := IncludeFileExtensionsBooleanFileVisitor_Package.Create (vector);
        return FileFilter_Access (VisitorFileFilter_Package.Create (includeFileExtensionsBooleanFileVisitor));
   end getInstance;

   procedure getInstance (extension : Unbounded_String) is
      Java_Result : constant FileFilter_Access := getInstance (extension);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package;


