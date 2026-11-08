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


with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.FilePathData_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.AbPathData_Package_References;
with org.allbinary.logic.io.path.AbFilePath_Package; use org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbFilePath_Package_References;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.logic.io.path.PathUtil_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   subtype FilePathData_Access is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access;
   function "=" (Left, Right : FilePathData_Access) return Boolean renames org.allbinary.logic.io.file.FilePathData_Package_References."=";
   subtype FilePathData_Access_Array is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array;
   function "=" (Left, Right : FilePathData_Access_Array) return Boolean renames org.allbinary.logic.io.file.FilePathData_Package_References."=";
   subtype FilePathData_Access_Array_Access is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array_Access;
   function "=" (Left, Right : FilePathData_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FilePathData_Package_References."=";
   subtype FilePathData_Access_Array_Access_Array is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array_Access_Array;
   function "=" (Left, Right : FilePathData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FilePathData_Package_References."=";
   subtype FilePathData_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FilePathData_Package_References.FilePathData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FilePathData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FilePathData_Package_References."=";
   subtype AbPathData_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access;
   function "=" (Left, Right : AbPathData_Access) return Boolean renames org.allbinary.logic.io.path.AbPathData_Package_References."=";
   subtype AbPathData_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array;
   function "=" (Left, Right : AbPathData_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPathData_Package_References."=";
   subtype AbPathData_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access;
   function "=" (Left, Right : AbPathData_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPathData_Package_References."=";
   subtype AbPathData_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array;
   function "=" (Left, Right : AbPathData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPathData_Package_References."=";
   subtype AbPathData_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPathData_Package_References.AbPathData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPathData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPathData_Package_References."=";
   subtype AbFilePath_Access is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access;
   function "=" (Left, Right : AbFilePath_Access) return Boolean renames org.allbinary.logic.io.path.AbFilePath_Package_References."=";
   subtype AbFilePath_Access_Array is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array;
   function "=" (Left, Right : AbFilePath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbFilePath_Package_References."=";
   subtype AbFilePath_Access_Array_Access is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array_Access;
   function "=" (Left, Right : AbFilePath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbFilePath_Package_References."=";
   subtype AbFilePath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array_Access_Array;
   function "=" (Left, Right : AbFilePath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbFilePath_Package_References."=";
   subtype AbFilePath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbFilePath_Package_References.AbFilePath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFilePath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbFilePath_Package_References."=";
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   function "=" (Left, Right : AbPath_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   procedure Initialize_Fields (This : in out PathUtil'Class) is
   begin
      null;
      This.abPathData := AbPathData_Package.getInstance;
      This.filePathData := FilePathData_Package.getInstance;
   end Initialize_Fields;


   function getInstance return PathUtil_Access is
   begin
        return PathUtil_Access (PathUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out PathUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PathUtil_Access is
      This : constant PathUtil_Access := new PathUtil;
   begin
      PathUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String is
      abFilePath : constant AbFilePath_Access := AbFilePath_Access (abFilePath_Param);
   begin
        return This.abPathData.getExtension (abFilePath.toString);
   end getExtensionWithAbFilePath;

   function getExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String is
      abPath : constant AbPath_Access := AbPath_Access (abPath_Param);
   begin
        return This.abPathData.getExtension (abPath.toString);
   end getExtensionWithAbPath;

   --  throws Exception
   function getWithoutExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String is
      abFilePath : constant AbFilePath_Access := AbFilePath_Access (abFilePath_Param);
   begin
        return PathUtil'Class (This).getWithoutExtension (abFilePath.toString);
   end getWithoutExtensionWithAbFilePath;

   --  throws Exception
   function getWithoutExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String is
      abPath : constant AbPath_Access := AbPath_Access (abPath_Param);
   begin
        return PathUtil'Class (This).getWithoutExtension (abPath.toString);
   end getWithoutExtensionWithAbPath;

   --  throws Exception
   function getWithoutExtension (This : in out PathUtil; filePath : Unbounded_String) return Unbounded_String is
      indexOfFileExtensionDelmiter : Integer;
      pathWithoutExtension : Unbounded_String;
   begin
        indexOfFileExtensionDelmiter := This.abPathData.getExtensionIndex (filePath);
        pathWithoutExtension := filePath;
        if (indexOfFileExtensionDelmiter) >= (0) then
            pathWithoutExtension := Unbounded_Slice (filePath, (0) + 1, indexOfFileExtensionDelmiter);
        end if;
        return pathWithoutExtension;
   end getWithoutExtension;

   function isValid (This : in out PathUtil; path : Unbounded_String) return Boolean is
   begin
        if PathUtil'Class (This).isValidStart (path) then
            if PathUtil'Class (This).isValidEnd (path) then
                return True;
            end if;
        end if;
        return False;
   end isValid;

   function isValidStart (This : in out PathUtil; path : Unbounded_String) return Boolean is
   begin
        if ((Element (path, (0) + 1)) = (This.abPathData.SEPARATORCHAR)) or else ((Element (path, (0) + 1)) = ('.')) then
            return True;
        else
            return False;
        end if;
   end isValidStart;

   function isValidEnd (This : in out PathUtil; path : Unbounded_String) return Boolean is
      stringValidationUtil : StringValidationUtil_Access;
   begin
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if stringValidationUtil.isEmpty (path) then
            return False;
        end if;
        if (Element (path, ((Ada.Strings.Unbounded.Length (path)) - (1)) + 1)) = (This.abPathData.SEPARATORCHAR) then
            return True;
        else
            return False;
        end if;
   end isValidEnd;

   function adjustStart (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String is
      path : Unbounded_String := path_Param;
   begin
        if not (PathUtil'Class (This).isValidStart (path)) then
            path := This.abPathData.SEPARATOR & path;
        end if;
        return path;
   end adjustStart;

   function adjustEnd (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String is
      path : Unbounded_String := path_Param;
   begin
        if not (PathUtil'Class (This).isValidEnd (path)) then
            path := path & This.abPathData.SEPARATOR;
        end if;
        return path;
   end adjustEnd;

   function adjust (This : in out PathUtil; path_Param : Unbounded_String) return Unbounded_String is
      path : Unbounded_String := path_Param;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if stringValidationUtil.isEmpty (path) then
            return This.abPathData.SEPARATOR;
        end if;
        if (Java_Index_Of (path, Java_Image (To_Unbounded_String ("\")))) >= (0) then
            path := Java_Replace (path, Java_Image ('\'), Java_Image (This.abPathData.SEPARATORCHAR));
        end if;
        return path;
   end adjust;

   --  throws Exception
   function removeNameFromPath (This : in out PathUtil; path : Unbounded_String) return AbPath_Access is
      endIndex : Integer;
      pathWithoutName : Unbounded_String;
   begin
        endIndex := Java_Last_Index_Of (path, Java_Image (This.abPathData.SEPARATOR));
        if (endIndex) < (0) then
            endIndex := Java_Last_Index_Of (path, Java_Image (This.filePathData.SEPARATORCHAR));
        end if;
        if (endIndex) < (0) then
            return AbPath_Package.createAbPath;
        end if;
        if (Ada.Strings.Unbounded.Length (path)) = ((endIndex) + (1)) then
            return PathUtil'Class (This).removeNameFromPath (Unbounded_Slice (path, (0) + 1, (endIndex) - (1)));
        else
            pathWithoutName := Unbounded_Slice (path, (0) + 1, endIndex);
            return AbPath_Package.Create (pathWithoutName, StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
   end removeNameFromPath;

   procedure getExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).getExtensionWithAbFilePath (abFilePath_Param => abFilePath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtensionWithAbFilePath;

   procedure getExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).getExtensionWithAbPath (abPath_Param => abPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtensionWithAbPath;

   procedure getWithoutExtensionWithAbFilePath (This : in out PathUtil; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).getWithoutExtensionWithAbFilePath (abFilePath_Param => abFilePath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithoutExtensionWithAbFilePath;

   procedure getWithoutExtensionWithAbPath (This : in out PathUtil; abPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).getWithoutExtensionWithAbPath (abPath_Param => abPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithoutExtensionWithAbPath;

   procedure getWithoutExtension (This : in out PathUtil; filePath : Unbounded_String) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).getWithoutExtension (filePath => filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithoutExtension;

   procedure isValid (This : in out PathUtil; path : Unbounded_String) is
      Java_Result : constant Boolean := PathUtil'Class (This).isValid (path => path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure isValidStart (This : in out PathUtil; path : Unbounded_String) is
      Java_Result : constant Boolean := PathUtil'Class (This).isValidStart (path => path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidStart;

   procedure isValidEnd (This : in out PathUtil; path : Unbounded_String) is
      Java_Result : constant Boolean := PathUtil'Class (This).isValidEnd (path => path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidEnd;

   procedure adjustStart (This : in out PathUtil; path_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).adjustStart (path_Param => path_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjustStart;

   procedure adjustEnd (This : in out PathUtil; path_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).adjustEnd (path_Param => path_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjustEnd;

   procedure adjust (This : in out PathUtil; path_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := PathUtil'Class (This).adjust (path_Param => path_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjust;

   procedure removeNameFromPath (This : in out PathUtil; path : Unbounded_String) is
      Java_Result : constant AbPath_Access := PathUtil'Class (This).removeNameFromPath (path => path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeNameFromPath;

begin
   null;
   instance := PathUtil_Package.Create;

end org.allbinary.logic.io.path.PathUtil_Package;


