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


package body org.allbinary.globals.UrlGlobalsInterface_Package is

   procedure Initialize_Fields (This : in out UrlGlobalsInterface'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out UrlGlobalsInterface'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return UrlGlobalsInterface_Access is
      This : constant UrlGlobalsInterface_Access := new UrlGlobalsInterface;
   begin
      UrlGlobalsInterface_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getMainPath (This : in out UrlGlobalsInterface) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getMainPath;

   function getTestHtmlPath (This : in out UrlGlobalsInterface) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getTestHtmlPath;

   function getWebappPath (This : in out UrlGlobalsInterface) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getWebappPath;

   function isTestingMode (This : in out UrlGlobalsInterface) return Boolean is
   begin
        return False;
   end isTestingMode;

end org.allbinary.globals.UrlGlobalsInterface_Package;


