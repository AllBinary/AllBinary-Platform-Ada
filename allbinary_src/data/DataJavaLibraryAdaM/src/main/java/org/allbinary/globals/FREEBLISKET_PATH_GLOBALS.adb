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


with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;

package body org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package is

   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out FREEBLISKET_PATH_GLOBALS'Class) is
   begin
      null;
      
      
      This.TEMPLATEPATH := To_Unbounded_String ("template") & Java_Image (AbPathData_Package.getInstance.SEPARATOR);
      This.STYLEPATH := This.TEMPLATEPATH & To_Unbounded_String ("style") & Java_Image (AbPathData_Package.getInstance.SEPARATOR);
      This.THEMEPATH := This.STYLEPATH & To_Unbounded_String ("theme") & Java_Image (AbPathData_Package.getInstance.SEPARATOR);
      This.DBINITPATH := Java_Image (PATH_GLOBALS.getInstance.INIT_PATH) & To_Unbounded_String ("db") & Java_Image (AbPathData_Package.getInstance.SEPARATOR);
      This.LINEDATAPATH := Java_Image (PATH_GLOBALS.getInstance.INIT_PATH) & To_Unbounded_String ("lineData") & Java_Image (AbPathData_Package.getInstance.SEPARATOR);
      
      
      
      This.LICENSEERRORPAGE := To_Unbounded_String ("LicensingError.jsp");
      This.ERRORPAGE := To_Unbounded_String ("Error.jsp");
   end Initialize_Fields;


   function getInstance return FREEBLISKET_PATH_GLOBALS_Access is
   begin
        return FREEBLISKET_PATH_GLOBALS_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FREEBLISKET_PATH_GLOBALS'Class) is
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("install"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        This.INSTALLPATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (PATH_GLOBALS.getInstance.INIT_PATH);
        stringBuffer.append (To_Unbounded_String ("views"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        This.XSLPATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.XSLPATH);
        stringBuffer.append (To_Unbounded_String ("configuration"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        This.CONFIGURATIONPATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.CONFIGURATIONPATH);
        stringBuffer.append (To_Unbounded_String ("user"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        This.USERCONFIGURATIONPATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.CONFIGURATIONPATH);
        stringBuffer.append (To_Unbounded_String ("context"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        This.CONTEXTCONFIGURATIONPATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
   end Initialize;

   function Create return FREEBLISKET_PATH_GLOBALS_Access is
      This : constant FREEBLISKET_PATH_GLOBALS_Access := new FREEBLISKET_PATH_GLOBALS;
   begin
      FREEBLISKET_PATH_GLOBALS_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := FREEBLISKET_PATH_GLOBALS_Package.Create;

end org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;


