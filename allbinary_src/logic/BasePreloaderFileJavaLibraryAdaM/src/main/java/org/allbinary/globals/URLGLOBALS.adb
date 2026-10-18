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


with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;

package body org.allbinary.globals.URLGLOBALS_Package is

   procedure Initialize_Fields (This : in out URLGLOBALS'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out URLGLOBALS'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return URLGLOBALS_Access is
      This : constant URLGLOBALS_Access := new URLGLOBALS;
   begin
      URLGLOBALS_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (urlGlobalsInterface_Param : access UrlGlobalsInterface_Package.UrlGlobalsInterface'Class) is
      urlGlobalsInterface : constant UrlGlobalsInterface_Access := UrlGlobalsInterface_Access (urlGlobalsInterface_Param);
   begin
        URLGLOBALS_Package.urlGlobalsInterface := urlGlobalsInterface;
   end init;

   function isTestingMode return Boolean is
   begin
        return URLGLOBALS_Package.urlGlobalsInterface.isTestingMode;
   end isTestingMode;

   function getWebappPath return Unbounded_String is
   begin
        return URLGLOBALS_Package.urlGlobalsInterface.getWebappPath;
   end getWebappPath;

   function getTestHtmlPath return Unbounded_String is
   begin
        return URLGLOBALS_Package.urlGlobalsInterface.getTestHtmlPath;
   end getTestHtmlPath;

   --  throws Exception
   function getMainPath return Unbounded_String is
   begin
        return URLGLOBALS_Package.urlGlobalsInterface.getMainPath;
   end getMainPath;

begin
   null;
   urlGlobalsInterface := UrlGlobalsInterface_Access (AppUrlGlobals_Package.NULL_APP_URL_GLOBALS);

end org.allbinary.globals.URLGLOBALS_Package;


