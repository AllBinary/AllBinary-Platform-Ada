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


package body org.allbinary.data.generator.QuoteRequestIdGenerator_Package is

   procedure Initialize_Fields (This : in out QuoteRequestIdGenerator'Class) is
   begin
      null;
      This.IDFILE := To_Unbounded_String ("quoterequestId");
   end Initialize_Fields;


   procedure Initialize (This : in out QuoteRequestIdGenerator'Class) is
      stringBuffer : StringMaker_Access;
   begin
      UniqueIdGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (PATH_GLOBALS.getInstance.INIT_PATH);
        stringBuffer.append (This.IDFILE);
        stringBuffer.append (UniqueIdGenerator_Package.EXT);
        UniqueIdGenerator (This).setFile (stringBuffer.toString, This.IDFILE);
   end Initialize;

   function Create return QuoteRequestIdGenerator_Access is
      This : constant QuoteRequestIdGenerator_Access := new QuoteRequestIdGenerator;
   begin
      QuoteRequestIdGenerator_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.data.generator.QuoteRequestIdGenerator_Package;


