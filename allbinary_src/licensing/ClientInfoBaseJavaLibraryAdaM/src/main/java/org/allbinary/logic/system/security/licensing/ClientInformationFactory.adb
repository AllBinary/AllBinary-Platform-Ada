-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package is

   procedure Initialize_Fields (This : in out ClientInformationFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ClientInformationFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ClientInformationFactory_Access is
      This : constant ClientInformationFactory_Access := new ClientInformationFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out ClientInformationFactory) return ClientInformation_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      stringUtil : StringUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.putF (commonStrings.NOT_IMPLEMENTED, This'Unchecked_Access, commonStrings.GET_INSTANCE);
        stringUtil := StringUtil_Package.getInstance;
        return ClientInformation_Package.Create (stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING);
   end getInstance;

   procedure getInstance (This : in out ClientInformationFactory) is
      Java_Result : constant ClientInformation_Access := ClientInformationFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;


