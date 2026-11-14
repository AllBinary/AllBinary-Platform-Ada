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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.file.FileData_Package; use org.allbinary.logic.io.file.FileData_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package; use org.allbinary.logic.io.path.PathUtil_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.data.tree.dom.FileTableMapping_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package FileData_Package renames Standard.org.allbinary.logic.io.file.FileData_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package PathUtil_Package renames Standard.org.allbinary.logic.io.path.PathUtil_Package;
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
        return Java_Box (This.file.getPath);
   end getKey;

   --  throws Exception
   function toVector (This : in out FileTableMapping) return BasicArrayList_Access is
      filePropertyVector : BasicArrayList_Access;
   begin
        filePropertyVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        filePropertyVector.add (Java_Box (This.file.getAbsolutePath));
        filePropertyVector.add (Java_Box (This.file.getCanonicalPath));
        filePropertyVector.add (Java_Box (This.file.getName));
        filePropertyVector.add (Java_Box (This.file.getParent));
        filePropertyVector.add (Java_Box (This.file.getPath));
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
        filePropertyHashMap := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
        pathData := AbPathData_Package.getInstance;
        pathUtil := PathUtil_Package.getInstance;
        rootFileName := pathData.getNameFromPath (pathUtil.getWithoutExtension (This.file.getPath));
        fileData := FileData_Package.getInstance;
        filePropertyHashMap.put (fileData.ROOT_NAME, Java_Box (rootFileName));
        filePropertyHashMap.put (fileData.ISFILE, Java_Box (To_Unbounded_String (Java_Image (This.file.isFile))));
        filePropertyHashMap.put (fileData.ISDIRECTORY, Java_Box (To_Unbounded_String (Java_Image (This.file.isDirectory))));
        filePropertyHashMap.put (fileData.ISHIDDEN, Java_Box (To_Unbounded_String (Java_Image (This.file.isHidden))));
        filePropertyHashMap.put (fileData.ISABSOLUTE, Java_Box (To_Unbounded_String (Java_Image (This.file.isAbsolute))));
        filePropertyHashMap.put (fileData.ABSOLUTE_PATH, Java_Box (This.file.getAbsolutePath));
        filePropertyHashMap.put (fileData.CANONICAL_PATH, Java_Box (This.file.getCanonicalPath));
        filePropertyHashMap.put (fileData.NAME, Java_Box (This.file.getName));
        filePropertyHashMap.put (fileData.PARENT, Java_Box (This.file.getParent));
        filePropertyHashMap.put (fileData.PATH, Java_Box (This.file.getPath));
        return filePropertyHashMap;
   end toHashMap;

end org.allbinary.data.tree.dom.FileTableMapping_Package;


