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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.security.licensing.ClientInformation_Package; use org.allbinary.logic.system.security.licensing.ClientInformation_Package;
with org.allbinary.logic.system.security.licensing.ClientInformation_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.system.security.licensing.ClientInformation_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype ClientInformation_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access;
   function "=" (Left, Right : ClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   subtype ClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array;
   function "=" (Left, Right : ClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   subtype ClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access;
   function "=" (Left, Right : ClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   subtype ClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : ClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
   subtype ClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformation_Package_References.ClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.ClientInformation_Package_References."=";
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
      ClientInformationFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out ClientInformationFactory) return ClientInformation_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      stringUtil : StringUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.putF (commonStrings.NOT_IMPLEMENTED, ClientInformationFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        stringUtil := StringUtil_Package.getInstance;
        return ClientInformation_Package.Create (stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING, stringUtil.NULL_STRING);
   end getInstance;

end org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;


