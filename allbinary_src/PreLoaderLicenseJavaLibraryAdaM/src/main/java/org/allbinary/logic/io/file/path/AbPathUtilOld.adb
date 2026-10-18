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


package body org.allbinary.logic.io.file.path.AbPathUtilOld_Package is

   procedure Initialize_Fields (This : in out AbPathUtilOld'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abPathData := AbPathData_Package.getInstance;
      This.filePathData := FilePathData_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AbPathUtilOld_Access is
   begin
        return AbPathUtilOld_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbPathUtilOld'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbPathUtilOld_Access is
      This : constant AbPathUtilOld_Access := new AbPathUtilOld;
   begin
      AbPathUtilOld_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String is
      abFilePath : constant AbFilePath_Access := AbFilePath_Access (abFilePath_Param);
   begin
        return AbPathUtilOld'Class (This).getExtension (abFilePath.toString);
   end getExtension;

   --  throws Exception
   function getExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String is
      abPath : constant AbPath_Access := AbPath_Access (abPath_Param);
   begin
        return AbPathUtilOld'Class (This).getExtension (abPath.toString);
   end getExtension;

   --  throws Exception
   function getExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) return Unbounded_String is
      beginIndex : Integer;
      extension : Unbounded_String;
   begin
        if (Length (filePath)) < (AbPathUtilOld_Package.MIN) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could not be a file path since its less that 4 characters")));
        end if;
        beginIndex := (Length (filePath)) - (AbPathUtilOld_Package.MIN);
        extension := Unbounded_Slice (filePath, ((beginIndex) + (1)) + 1, Length (filePath));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("FileExtension: ") & extension, AbPathUtilOld_Access'(This'Unchecked_Access), To_Unbounded_String ("getExtension()"));
        end if;
        return extension;
   end getExtension;

   --  throws Exception
   function getWithoutExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) return Unbounded_String is
      abFilePath : constant AbFilePath_Access := AbFilePath_Access (abFilePath_Param);
   begin
        return AbPathUtilOld'Class (This).getWithoutExtension (abFilePath.toString);
   end getWithoutExtension;

   --  throws Exception
   function getWithoutExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String is
      abPath : constant AbPath_Access := AbPath_Access (abPath_Param);
   begin
        return AbPathUtilOld'Class (This).getWithoutExtension (abPath.toString);
   end getWithoutExtension;

   --  throws Exception
   function getWithoutExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) return Unbounded_String is
      endIndex : Integer;
      pathWithoutExtension : Unbounded_String;
   begin
        if (Length (filePath)) < (AbPathUtilOld_Package.MIN) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could not be a file path since its less that 4 characters")));
        end if;
        endIndex := (Length (filePath)) - (AbPathUtilOld_Package.MIN);
        pathWithoutExtension := Unbounded_Slice (filePath, (0) + 1, endIndex);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("FileWithoutExtension: ") & pathWithoutExtension, AbPathUtilOld_Access'(This'Unchecked_Access), To_Unbounded_String ("getWithoutExtension()"));
        end if;
        return pathWithoutExtension;
   end getWithoutExtension;

   function isValid (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean is
   begin
        if AbPathUtilOld'Class (This).isValidStart (path) then
            if AbPathUtilOld'Class (This).isValidEnd (path) then
                return True;
            end if;
        end if;
        return False;
   end isValid;

   function isValidStart (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean is
   begin
        if (Element (path, (0) + 1)) = (This.abPathData.SEPARATORCHAR) then
            return True;
        else
            return False;
        end if;
   end isValidStart;

   function isValidEnd (This : in out AbPathUtilOld; path : Unbounded_String) return Boolean is
   begin
        if StringValidationUtil_Package.getInstance.isEmpty (path) then
            return False;
        end if;
        if (Element (path, ((Length (path)) - (1)) + 1)) = (This.abPathData.SEPARATORCHAR) then
            return True;
        else
            return False;
        end if;
   end isValidEnd;

   function adjustStart (This : in out AbPathUtilOld; path_Param : Unbounded_String) return Unbounded_String is
      path : Unbounded_String := path_Param;
   begin
        if not (AbPathUtilOld'Class (This).isValidStart (path)) then
            path := Java_Image (This.abPathData.SEPARATOR) & path;
        end if;
        return path;
   end adjustStart;

   function adjustEnd (This : in out AbPathUtilOld; path_Param : Unbounded_String) return Unbounded_String is
      path : Unbounded_String := path_Param;
   begin
        if not (AbPathUtilOld'Class (This).isValidEnd (path)) then
            path := path & Java_Image (This.abPathData.SEPARATOR);
        end if;
        return path;
   end adjustEnd;

   function adjust (This : in out AbPathUtilOld; path_Param : Unbounded_String) return Unbounded_String is
      path : Unbounded_String := path_Param;
   begin
        if StringValidationUtil_Package.getInstance.isEmpty (path) then
            return This.abPathData.SEPARATOR;
        end if;
        if ((Index (path, Java_Image (To_Unbounded_String ("\"))) - 1)) >= (0) then
            path := path.replace ('\', This.abPathData.SEPARATORCHAR);
        end if;
        return path;
   end adjust;

   function getNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) return Unbounded_String is
      endIndex : Integer;
      categoryName : Unbounded_String;
   begin
        endIndex := categoryPath.lastIndexOf (This.abPathData.SEPARATOR);
        if (endIndex) < (0) then
            endIndex := categoryPath.lastIndexOf (This.filePathData.SEPARATORCHAR);
        end if;
        if (endIndex) < (0) then
            return categoryPath;
        end if;
        if (Length (categoryPath)) = ((endIndex) + (1)) then
            categoryName := Unbounded_Slice (categoryPath, (0) + 1, endIndex);
            return AbPathUtilOld'Class (This).getNameFromPath (categoryName);
        else
            categoryName := Unbounded_Slice (categoryPath, ((endIndex) + (1)) + 1, Length (categoryPath));
            return categoryName;
        end if;
   end getNameFromPath;

   --  throws Exception
   function removeNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) return AbPath_Access is
      endIndex : Integer;
      categoryName : Unbounded_String;
   begin
        endIndex := categoryPath.lastIndexOf (This.abPathData.SEPARATOR);
        if (endIndex) < (0) then
            endIndex := categoryPath.lastIndexOf (This.filePathData.SEPARATORCHAR);
        end if;
        if (endIndex) < (0) then
            return AbPath_Package.createAbPath;
        end if;
        if (Length (categoryPath)) = ((endIndex) + (1)) then
            return AbPathUtilOld'Class (This).removeNameFromPath (Unbounded_Slice (categoryPath, (0) + 1, (endIndex) - (1)));
        else
            categoryName := Unbounded_Slice (categoryPath, (0) + 1, endIndex);
            return AbPath_Package.Create (categoryName, StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
   end removeNameFromPath;

   procedure getExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).getExtension (abFilePath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtension;

   procedure getExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).getExtension (abPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtension;

   procedure getExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).getExtension (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getExtension;

   procedure getWithoutExtension (This : in out AbPathUtilOld; abFilePath_Param : access AbFilePath_Package.AbFilePath'Class) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).getWithoutExtension (abFilePath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithoutExtension;

   procedure getWithoutExtension (This : in out AbPathUtilOld; abPath_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).getWithoutExtension (abPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithoutExtension;

   procedure getWithoutExtension (This : in out AbPathUtilOld; filePath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).getWithoutExtension (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWithoutExtension;

   procedure isValid (This : in out AbPathUtilOld; path : Unbounded_String) is
      Java_Result : constant Boolean := AbPathUtilOld'Class (This).isValid (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure isValidStart (This : in out AbPathUtilOld; path : Unbounded_String) is
      Java_Result : constant Boolean := AbPathUtilOld'Class (This).isValidStart (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidStart;

   procedure isValidEnd (This : in out AbPathUtilOld; path : Unbounded_String) is
      Java_Result : constant Boolean := AbPathUtilOld'Class (This).isValidEnd (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValidEnd;

   procedure adjustStart (This : in out AbPathUtilOld; path_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).adjustStart (path_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjustStart;

   procedure adjustEnd (This : in out AbPathUtilOld; path_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).adjustEnd (path_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjustEnd;

   procedure adjust (This : in out AbPathUtilOld; path_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).adjust (path_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjust;

   procedure getNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbPathUtilOld'Class (This).getNameFromPath (categoryPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNameFromPath;

   procedure removeNameFromPath (This : in out AbPathUtilOld; categoryPath : Unbounded_String) is
      Java_Result : constant AbPath_Access := AbPathUtilOld'Class (This).removeNameFromPath (categoryPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeNameFromPath;

begin
   null;
   instance := AbPathUtilOld_Package.Create;
   MIN := 4;

end org.allbinary.logic.io.file.path.AbPathUtilOld_Package;


