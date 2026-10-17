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


package body org.allbinary.data.tree.dom.FileTableMapping_Package is

   procedure Initialize_Fields (This : in out FileTableMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FileTableMapping'Class; file : AbFile_Access) is
   begin
      Initialize_Fields (This);
        This.file := file;
   end Initialize;

   function Create (file : AbFile_Access) return FileTableMapping_Access is
      This : constant FileTableMapping_Access := new FileTableMapping;
   begin
      FileTableMapping_Package.Initialize (This.all, file);
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
        filePropertyVector := BasicArrayListD_Package.Create;
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
        filePropertyHashMap.put (fileData.ROOT_NAME, rootFileName);
        filePropertyHashMap.put (fileData.ISFILE, To_Unbounded_String (Java_Image (This.file.isFile)).toString);
        filePropertyHashMap.put (fileData.ISDIRECTORY, To_Unbounded_String (Java_Image (This.file.isDirectory)).toString);
        filePropertyHashMap.put (fileData.ISHIDDEN, To_Unbounded_String (Java_Image (This.file.isHidden)).toString);
        filePropertyHashMap.put (fileData.ISABSOLUTE, To_Unbounded_String (Java_Image (This.file.isAbsolute)).toString);
        filePropertyHashMap.put (fileData.ABSOLUTE_PATH, This.file.getAbsolutePath);
        filePropertyHashMap.put (fileData.CANONICAL_PATH, This.file.getCanonicalPath);
        filePropertyHashMap.put (fileData.NAME, This.file.getName);
        filePropertyHashMap.put (fileData.PARENT, This.file.getParent);
        filePropertyHashMap.put (fileData.PATH, This.file.getPath);
        return filePropertyHashMap;
   end toHashMap;

end org.allbinary.data.tree.dom.FileTableMapping_Package;


