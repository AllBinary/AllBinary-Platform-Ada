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


package body org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package is

   procedure Initialize_Fields (This : in out SecuredNativeLibraryHelperWrapper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SecuredNativeLibraryHelperWrapper'Class; securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access) is
   begin
        NativeLibraryHelperWrapper_Package.Initialize (This, securedNativeLibraryInterface.getLibraryName);
        Initialize_Fields (This);
        This.securedNativeLibraryInterface := securedNativeLibraryInterface;
   end Initialize;

   function Create (securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access) return SecuredNativeLibraryHelperWrapper_Access is
      This : constant SecuredNativeLibraryHelperWrapper_Access := new SecuredNativeLibraryHelperWrapper;
   begin
      SecuredNativeLibraryHelperWrapper_Package.Initialize (This.all, securedNativeLibraryInterface);
      return This;
   end Create;

   --  throws LicensingException
   function unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation : AbeClientInformationInterface_Access) return Boolean is
   begin
        return This.securedNativeLibraryInterface.unlock (AbKeys_Package.getInstance.getKey (abeClientInformation, This.securedNativeLibraryInterface.getName));
   end unlock;

   procedure unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation : AbeClientInformationInterface_Access) is
      Java_Result : constant Boolean := SecuredNativeLibraryHelperWrapper'Class (This).unlock (abeClientInformation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end unlock;

end org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package;


