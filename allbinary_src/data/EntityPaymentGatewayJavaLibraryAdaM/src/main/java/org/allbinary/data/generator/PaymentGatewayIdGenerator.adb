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


with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.generator.PaymentGatewayIdGenerator_Package is

   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out PaymentGatewayIdGenerator'Class) is
   begin
      null;
      This.IDFILE := To_Unbounded_String ("paymentgatewayId");
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayIdGenerator'Class) is
      stringBuffer : StringMaker_Access;
   begin
      UniqueIdGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS_Package.getMainPath);
        stringBuffer.append (PATH_GLOBALS_Package.getInstance.INIT_PATH);
        stringBuffer.append (This.IDFILE);
        stringBuffer.append (UniqueIdGenerator_Package.EXT);
        UniqueIdGenerator (This).setFile (stringBuffer.toString, This.IDFILE);
   end Initialize;

   function Create return PaymentGatewayIdGenerator_Access is
      This : constant PaymentGatewayIdGenerator_Access := new PaymentGatewayIdGenerator;
   begin
      PaymentGatewayIdGenerator_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.data.generator.PaymentGatewayIdGenerator_Package;


