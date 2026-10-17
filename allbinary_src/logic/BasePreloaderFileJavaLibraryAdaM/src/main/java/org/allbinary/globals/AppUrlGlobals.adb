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


package body org.allbinary.globals.AppUrlGlobals_Package is

   procedure Initialize_Fields (This : in out AppUrlGlobals'Class) is
   begin
      null;
      This.path := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;

   procedure Initialize (This : in out AppUrlGlobals'Class) is
   begin
      UrlGlobalsInterface_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AppUrlGlobals_Access is
      This : constant AppUrlGlobals_Access := new AppUrlGlobals;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function isTestingMode (This : in out AppUrlGlobals) return Boolean is
   begin
        return False;
   end isTestingMode;

   function getWebappPath (This : in out AppUrlGlobals) return Unbounded_String is
   begin
        return This.path;
   end getWebappPath;

   procedure setWebappPath (This : in out AppUrlGlobals; path : Unbounded_String) is
   begin
        This.path := path;
        if not (((This.path.endsWith (To_Unbounded_String ("\"))) or else (This.path.endsWith (To_Unbounded_String ("/"))))) then
            This.path := This.path & To_Unbounded_String ("\");
        end if;
   end setWebappPath;

   function getTestHtmlPath (This : in out AppUrlGlobals) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getTestHtmlPath;

   --  throws Exception
   function getMainPath (This : in out AppUrlGlobals) return Unbounded_String is
   begin
        return This.path;
   end getMainPath;

   procedure isTestingMode (This : in out AppUrlGlobals) is
      Java_Result : constant Boolean := AppUrlGlobals'Class (This).isTestingMode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTestingMode;

   procedure getWebappPath (This : in out AppUrlGlobals) is
      Java_Result : constant Unbounded_String := AppUrlGlobals'Class (This).getWebappPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWebappPath;

   procedure getTestHtmlPath (This : in out AppUrlGlobals) is
      Java_Result : constant Unbounded_String := AppUrlGlobals'Class (This).getTestHtmlPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTestHtmlPath;

   procedure getMainPath (This : in out AppUrlGlobals) is
      Java_Result : constant Unbounded_String := AppUrlGlobals'Class (This).getMainPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMainPath;

begin
   null;
   NULL_APP_URL_GLOBALS := AppUrlGlobals_Package.Create;

end org.allbinary.globals.AppUrlGlobals_Package;


