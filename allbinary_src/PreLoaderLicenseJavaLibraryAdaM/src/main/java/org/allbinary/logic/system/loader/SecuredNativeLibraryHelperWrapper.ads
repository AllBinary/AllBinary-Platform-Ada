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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.security.AbKeys_Package; use org.allbinary.logic.system.security.AbKeys_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package; use org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package;
with org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package; use org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package;

package org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package is

   package AbKeys_Package renames Standard.org.allbinary.logic.system.security.AbKeys_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type SecuredNativeLibraryHelperWrapper is tagged;
   type SecuredNativeLibraryHelperWrapper_Access is access all SecuredNativeLibraryHelperWrapper'Class;
   type SecuredNativeLibraryHelperWrapper_Access_Array is array (Natural range <>) of SecuredNativeLibraryHelperWrapper_Access;
   type SecuredNativeLibraryHelperWrapper_Access_Array_Access is access all SecuredNativeLibraryHelperWrapper_Access_Array;

   type SecuredNativeLibraryHelperWrapper is new NativeLibraryHelperWrapper with record
      securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access;
   end record;

   procedure Initialize (This : in out SecuredNativeLibraryHelperWrapper'Class; securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access);
   function Create (securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access) return SecuredNativeLibraryHelperWrapper_Access;
   function unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation : AbeClientInformationInterface_Access) return Boolean;
   procedure unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation : AbeClientInformationInterface_Access);

end org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package;


