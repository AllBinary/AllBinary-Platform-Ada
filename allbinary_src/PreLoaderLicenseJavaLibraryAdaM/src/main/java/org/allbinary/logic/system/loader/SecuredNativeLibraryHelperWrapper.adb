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


with org.allbinary.logic.system.security.AbKeys_Package; use org.allbinary.logic.system.security.AbKeys_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package is

   package AbKeys_Package renames Standard.org.allbinary.logic.system.security.AbKeys_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out SecuredNativeLibraryHelperWrapper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SecuredNativeLibraryHelperWrapper'Class; securedNativeLibraryInterface_Param : access SecuredNativeLibraryInterface_Package.SecuredNativeLibraryInterface'Class) is
      securedNativeLibraryInterface : constant SecuredNativeLibraryInterface_Access := SecuredNativeLibraryInterface_Access (securedNativeLibraryInterface_Param);
   begin
        NativeLibraryHelperWrapper_Package.Initialize (This, securedNativeLibraryInterface.getLibraryName);
        Initialize_Fields (This);
        This.securedNativeLibraryInterface := securedNativeLibraryInterface;
   end Initialize;

   function Create (securedNativeLibraryInterface_Param : access SecuredNativeLibraryInterface_Package.SecuredNativeLibraryInterface'Class) return SecuredNativeLibraryHelperWrapper_Access is
      This : constant SecuredNativeLibraryHelperWrapper_Access := new SecuredNativeLibraryHelperWrapper;
   begin
      SecuredNativeLibraryHelperWrapper_Package.Initialize (This.all, securedNativeLibraryInterface_Param);
      return This;
   end Create;

   --  throws LicensingException
   function unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Boolean is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        return This.securedNativeLibraryInterface.unlock (AbKeys_Package.getInstance.getKey (abeClientInformation, This.securedNativeLibraryInterface.getName));
   end unlock;

   procedure unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      Java_Result : constant Boolean := SecuredNativeLibraryHelperWrapper'Class (This).unlock (abeClientInformation_Param => abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end unlock;

end org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package;


