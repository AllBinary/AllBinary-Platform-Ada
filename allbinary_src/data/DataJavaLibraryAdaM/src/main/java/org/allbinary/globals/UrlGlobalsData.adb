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


package body org.allbinary.globals.UrlGlobalsData_Package is

   procedure Initialize_Fields (This : in out UrlGlobalsData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UrlGlobalsData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UrlGlobalsData_Access is
      This : constant UrlGlobalsData_Access := new UrlGlobalsData;
   begin
      UrlGlobalsData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("URLGLOBALS_NAME");
   WEBAPPPATH := To_Unbounded_String ("URLGLOBALS_WEBAPPPATH");
   TESTINGMODE := To_Unbounded_String ("URLGLOBALS_TESTINGMODE");
   TESTINGHTMLPATH := To_Unbounded_String ("URLGLOBALS_TESTINGHTMLPATH");
   MAINPATH := To_Unbounded_String ("URLGLOBALS_MAINPATH");

end org.allbinary.globals.UrlGlobalsData_Package;


