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


package body org.allbinary.logic.io.path.AbPathData_Package is

   procedure Initialize_Fields (This : in out AbPathData'Class) is
   begin
      null;
      This.EXTENSION_SEP := CommonSeps_Package.getInstance.PERIOD;
      This.SEPARATORCHAR := '/';
      This.SEPARATOR := CommonSeps_Package.getInstance.FORWARD_SLASH;
   end Initialize_Fields;


   function getInstance return AbPathData_Access is
   begin
        return AbPathData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbPathData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbPathData_Access is
      This : constant AbPathData_Access := new AbPathData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getExtensionIndex (This : in out AbPathData; filePath : Unbounded_String) return Integer is
      indexOfFileExtensionDelmiter : Integer;
      indexOfLatDelimiter : Integer;
   begin
        indexOfFileExtensionDelmiter := filePath.lastIndexOf (This.EXTENSION_SEP);
        indexOfLatDelimiter := filePath.lastIndexOf (This.SEPARATORCHAR);
        if (indexOfFileExtensionDelmiter) < (0) then
            return -(1);
        end if;
        if (indexOfFileExtensionDelmiter) < (indexOfLatDelimiter) then
            return -(1);
        end if;
        return indexOfFileExtensionDelmiter;
   end getExtensionIndex;

   function getExtensionWithDot (This : in out AbPathData; filePath : Unbounded_String) return Unbounded_String is
      indexOfFileExtensionDelmiter : Integer;
      extension : Unbounded_String;
   begin
        indexOfFileExtensionDelmiter := This.getExtensionIndex (filePath);
        extension := StringUtil_Package.getInstance.EMPTY_STRING;
        if (indexOfFileExtensionDelmiter) >= (0) then
            extension := Unbounded_Slice (filePath, (indexOfFileExtensionDelmiter) + 1, Length (filePath));
        end if;
        return extension;
   end getExtensionWithDot;

   function getExtension (This : in out AbPathData; filePath : Unbounded_String) return Unbounded_String is
      indexOfFileExtensionDelmiter : Integer;
      extension : Unbounded_String;
   begin
        indexOfFileExtensionDelmiter := This.getExtensionIndex (filePath);
        extension := StringUtil_Package.getInstance.EMPTY_STRING;
        if (indexOfFileExtensionDelmiter) >= (0) then
            extension := Unbounded_Slice (filePath, ((indexOfFileExtensionDelmiter) + (1)) + 1, Length (filePath));
        end if;
        return extension;
   end getExtension;

   function getNameFromPath (This : in out AbPathData; path : Unbounded_String) return Unbounded_String is
      endIndex : Integer;
      categoryName : Unbounded_String;
   begin
        endIndex := path.lastIndexOf (This.SEPARATORCHAR);
        if (endIndex) < (0) then
            endIndex := path.lastIndexOf (FilePathData_Package.getInstance.SEPARATORCHAR);
        end if;
        if (endIndex) < (0) then
            return path;
        end if;
        if (Length (path)) = ((endIndex) + (1)) then
            categoryName := Unbounded_Slice (path, (0) + 1, endIndex);
            return This.getNameFromPath (categoryName);
        else
            categoryName := Unbounded_Slice (path, ((endIndex) + (1)) + 1, Length (path));
            return categoryName;
        end if;
   end getNameFromPath;

   function removeNameFromPath (This : in out AbPathData; path : Unbounded_String) return Unbounded_String is
      endIndex : Integer;
      pathWithoutName : Unbounded_String;
   begin
        endIndex := path.lastIndexOf (This.SEPARATORCHAR);
        if (endIndex) < (0) then
            endIndex := path.lastIndexOf (FilePathData_Package.getInstance.SEPARATORCHAR);
        end if;
        if (endIndex) < (0) then
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
        if (Length (path)) = ((endIndex) + (1)) then
            return This.removeNameFromPath (Unbounded_Slice (path, (0) + 1, (endIndex) - (1)));
        else
            pathWithoutName := Unbounded_Slice (path, (0) + 1, endIndex);
            return pathWithoutName;
        end if;
   end removeNameFromPath;

   procedure getInstance is
      Java_Result : constant AbPathData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getExtensionIndex (This : in out AbPathData; filePath : Unbounded_String) is
      Java_Result : constant Integer := AbPathData'Class (This).getExtensionIndex (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtensionIndex;

   procedure getExtensionWithDot (This : in out AbPathData; filePath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathData'Class (This).getExtensionWithDot (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtensionWithDot;

   procedure getExtension (This : in out AbPathData; filePath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathData'Class (This).getExtension (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtension;

   procedure getNameFromPath (This : in out AbPathData; path : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathData'Class (This).getNameFromPath (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNameFromPath;

   procedure removeNameFromPath (This : in out AbPathData; path : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathData'Class (This).removeNameFromPath (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeNameFromPath;

begin
   null;
   instance := AbPathData_Package.Create;

end org.allbinary.logic.io.path.AbPathData_Package;


