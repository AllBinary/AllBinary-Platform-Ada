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


package body org.allbinary.globals.Globals_Package is

   procedure Initialize_Fields (This : in out Globals'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return Globals_Access is
   begin
        return Globals_Package.instance;
   end getInstance;

   procedure Initialize (This : in out Globals'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Globals_Access is
      This : constant Globals_Access := new Globals;
   begin
      Globals_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out Globals; classLoader_Param : access ClassLoader_Package.ClassLoader'Class; pathString : Unbounded_String) is
      classLoader : constant ClassLoader_Access := ClassLoader_Access (classLoader_Param);
      commonStrings : CommonStrings_Access;
      appUrlGlobals : AppUrlGlobals_Access;
      stringBuffer : StringMaker_Access;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        appUrlGlobals := AppUrlGlobals_Package.Create;
        appUrlGlobals.setWebappPath (pathString);
        URLGLOBALS.init (appUrlGlobals);
        WebappClassLoaderInfo_Package.setLoader (classLoader);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Setting Up AllBinary System Configuration Args: "));
        stringBuffer.append (pathString);
        stringBuffer.append (To_Unbounded_String (" ClassLoader: "));
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (classLoader.all'Tag)));
        This.logUtil.putF (stringBuffer.toString, Globals_Access'(This'Unchecked_Access), commonStrings.INIT);
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if stringValidationUtil.isEmpty (pathString) then
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("No Path Provided. Using Process Path: "));
            stringBuffer.append (pathString);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            stringBuffer.append (CommonSeps_Package.getInstance.EQUALS);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            stringBuffer.append (URLGLOBALS.getWebappPath);
            This.logUtil.putF (stringBuffer.toString, Globals_Access'(This'Unchecked_Access), commonStrings.INIT);
        end if;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (To_Unbounded_String ("Webapp Path Set To: "));
        stringBuffer.append (URLGLOBALS.getWebappPath);
        This.logUtil.putF (stringBuffer.toString, Globals_Access'(This'Unchecked_Access), commonStrings.INIT);
   end init;

begin
   null;
   instance := Globals_Package.Create;

end org.allbinary.globals.Globals_Package;


