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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.file.FileData_Package; use org.allbinary.logic.io.file.FileData_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package; use org.allbinary.logic.io.path.PathUtil_Package;

package body org.allbinary.data.tree.dom.FileTableMapping_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package FileData_Package renames Standard.org.allbinary.logic.io.file.FileData_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package PathUtil_Package renames Standard.org.allbinary.logic.io.path.PathUtil_Package;
   procedure Initialize_Fields (This : in out FileTableMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FileTableMapping'Class; file_Param : access AbFile_Package.AbFile'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
      Initialize_Fields (This);
        This.file := file;
   end Initialize;

   function Create (file_Param : access AbFile_Package.AbFile'Class) return FileTableMapping_Access is
      This : constant FileTableMapping_Access := new FileTableMapping;
   begin
      FileTableMapping_Package.Initialize (This.all, file_Param);
      return This;
   end Create;

   --  throws Exception
   function getKey (This : in out FileTableMapping) return Java_Object_Access is
   begin
        return Java_Object_Access (This.file.getPath);
   end getKey;

   --  throws Exception
   function toVector (This : in out FileTableMapping) return BasicArrayList_Access is
      filePropertyVector : BasicArrayList_Access;
   begin
        filePropertyVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        filePropertyVector.add (This.file.getAbsolutePath);
        filePropertyVector.add (This.file.getCanonicalPath);
        filePropertyVector.add (This.file.getName);
        filePropertyVector.add (This.file.getParent);
        filePropertyVector.add (This.file.getPath);
        return filePropertyVector;
   end toVector;

   --  throws Exception
   function toHashMap (This : in out FileTableMapping) return HashMap_Access is
      filePropertyHashMap : HashMap_Access;
      pathData : AbPathData_Access;
      pathUtil : PathUtil_Access;
      rootFileName : Unbounded_String;
      fileData : FileData_Access;
   begin
        filePropertyHashMap := StdUtil_Package.getInstance.createHashMap;
        pathData := AbPathData_Package.getInstance;
        pathUtil := PathUtil_Package.getInstance;
        rootFileName := pathData.getNameFromPath (pathUtil.getWithoutExtension (This.file.getPath));
        fileData := FileData_Package.getInstance;
        filePropertyHashMap.put (fileData.ROOT_NAME, Java_Box (rootFileName));
        filePropertyHashMap.put (fileData.ISFILE, Java_Box (To_Unbounded_String (Java_Image (This.file.isFile)).toString));
        filePropertyHashMap.put (fileData.ISDIRECTORY, Java_Box (To_Unbounded_String (Java_Image (This.file.isDirectory)).toString));
        filePropertyHashMap.put (fileData.ISHIDDEN, Java_Box (To_Unbounded_String (Java_Image (This.file.isHidden)).toString));
        filePropertyHashMap.put (fileData.ISABSOLUTE, Java_Box (To_Unbounded_String (Java_Image (This.file.isAbsolute)).toString));
        filePropertyHashMap.put (fileData.ABSOLUTE_PATH, This.file.getAbsolutePath);
        filePropertyHashMap.put (fileData.CANONICAL_PATH, This.file.getCanonicalPath);
        filePropertyHashMap.put (fileData.NAME, Java_Box (This.file.getName));
        filePropertyHashMap.put (fileData.PARENT, This.file.getParent);
        filePropertyHashMap.put (fileData.PATH, This.file.getPath);
        return filePropertyHashMap;
   end toHashMap;

end org.allbinary.data.tree.dom.FileTableMapping_Package;


