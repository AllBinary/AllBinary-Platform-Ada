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


   procedure init (urlGlobalsInterface : UrlGlobalsInterface_Access) is
   begin
        URLGLOBALS.urlGlobalsInterface := urlGlobalsInterface;
   end init;

   function isTestingMode return Boolean is
   begin
        return URLGLOBALS.urlGlobalsInterface.isTestingMode;
   end isTestingMode;

   function getWebappPath return Unbounded_String is
   begin
        return URLGLOBALS.urlGlobalsInterface.getWebappPath;
   end getWebappPath;

   function getTestHtmlPath return Unbounded_String is
   begin
        return URLGLOBALS.urlGlobalsInterface.getTestHtmlPath;
   end getTestHtmlPath;

   --  throws Exception
   function getMainPath return Unbounded_String is
   begin
        return URLGLOBALS.urlGlobalsInterface.getMainPath;
   end getMainPath;

begin
   null;
   urlGlobalsInterface := AppUrlGlobals_Package.NULL_APP_URL_GLOBALS;

end org.allbinary.globals.URLGLOBALS_Package;


