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

limited with org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package;
package org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References is
   type SecuredNativeLibraryHelperWrapper_Access is access all org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package.SecuredNativeLibraryHelperWrapper'Class;
   type SecuredNativeLibraryHelperWrapper_Access_Array is array (Natural range <>) of SecuredNativeLibraryHelperWrapper_Access;
   type SecuredNativeLibraryHelperWrapper_Access_Array_Access is access all SecuredNativeLibraryHelperWrapper_Access_Array;
   type SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array is array (Natural range <>) of SecuredNativeLibraryHelperWrapper_Access_Array_Access;
   type SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array_Access is access all SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array;
end org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References;

with org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package; use org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package;
limited with org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package;
with org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References;

package org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype SecuredNativeLibraryInterface_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access;
   use type SecuredNativeLibraryInterface_Access;
   subtype SecuredNativeLibraryInterface_Access_Array is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array;
   use type SecuredNativeLibraryInterface_Access_Array;
   subtype SecuredNativeLibraryInterface_Access_Array_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array_Access;
   use type SecuredNativeLibraryInterface_Access_Array_Access;
   subtype SecuredNativeLibraryInterface_Access_Array_Access_Array is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array_Access_Array;
   use type SecuredNativeLibraryInterface_Access_Array_Access_Array;
   subtype SecuredNativeLibraryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array_Access_Array_Access;
   use type SecuredNativeLibraryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SecuredNativeLibraryHelperWrapper_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References.SecuredNativeLibraryHelperWrapper_Access;
   function "=" (Left, Right : SecuredNativeLibraryHelperWrapper_Access) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References."=";
   subtype SecuredNativeLibraryHelperWrapper_Access_Array is org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References.SecuredNativeLibraryHelperWrapper_Access_Array;
   function "=" (Left, Right : SecuredNativeLibraryHelperWrapper_Access_Array) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References."=";
   subtype SecuredNativeLibraryHelperWrapper_Access_Array_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References.SecuredNativeLibraryHelperWrapper_Access_Array_Access;
   function "=" (Left, Right : SecuredNativeLibraryHelperWrapper_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References."=";
   subtype SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array is org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References.SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array;
   function "=" (Left, Right : SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References."=";
   subtype SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References.SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SecuredNativeLibraryHelperWrapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package_References."=";

   type SecuredNativeLibraryHelperWrapper is new NativeLibraryHelperWrapper with record
      securedNativeLibraryInterface : SecuredNativeLibraryInterface_Access;
   end record;

   procedure Initialize (This : in out SecuredNativeLibraryHelperWrapper'Class; securedNativeLibraryInterface_Param : access SecuredNativeLibraryInterface_Package.SecuredNativeLibraryInterface'Class);
   function Create (securedNativeLibraryInterface_Param : access SecuredNativeLibraryInterface_Package.SecuredNativeLibraryInterface'Class) return SecuredNativeLibraryHelperWrapper_Access;
   function unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Boolean;
   procedure unlock (This : in out SecuredNativeLibraryHelperWrapper; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper_Package;


