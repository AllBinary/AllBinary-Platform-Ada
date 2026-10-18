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


package body org.allbinary.globals.WebAppUrlGlobals_Package is

   procedure Initialize_Fields (This : in out WebAppUrlGlobals'Class) is
   begin
      null;
      This.path := Null_Unbounded_String;
      This.isWebappPathSet := False;
   end Initialize_Fields;

   procedure Initialize (This : in out WebAppUrlGlobals'Class) is
   begin
      UrlGlobalsInterface_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return WebAppUrlGlobals_Access is
      This : constant WebAppUrlGlobals_Access := new WebAppUrlGlobals;
   begin
      WebAppUrlGlobals_Package.Initialize (This.all);
      return This;
   end Create;


   function isTestingMode (This : in out WebAppUrlGlobals) return Boolean is
   begin
        return InitInfo_Package.getInstance.isTesting;
   end isTestingMode;

   function getWebappPath (This : in out WebAppUrlGlobals) return Unbounded_String is
   begin
        return This.path;
   end getWebappPath;

   procedure setWebappPath (This : in out WebAppUrlGlobals; path_Param : Unbounded_String) is
      path : Unbounded_String := path_Param;
   begin
        path := path;
        This.isWebappPathSet := True;
   end setWebappPath;

   function getTestHtmlPath (This : in out WebAppUrlGlobals) return Unbounded_String is
   begin
        return InitInfo_Package.getInstance.getTestHtmlPath;
   end getTestHtmlPath;

   --  throws Exception
   function getMainPath (This : in out WebAppUrlGlobals) return Unbounded_String is
      mainPath : Unbounded_String;
   begin
        mainPath := InitInfo_Package.getInstance.getMainPath;
        if not (StringValidationUtil_Package.getInstance.isEmpty (mainPath)) then
            return mainPath;
        elsif This.isWebappPathSet then
            return WebAppUrlGlobals'Class (This).getWebappPath;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Webapp Path is not set")));
        end if;
   end getMainPath;

end org.allbinary.globals.WebAppUrlGlobals_Package;


