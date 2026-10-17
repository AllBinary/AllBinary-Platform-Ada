--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.advertisement.AdConfiguration_Package; use org.allbinary.business.advertisement.AdConfiguration_Package;

package org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package is

   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type AppNameLicensingAdConfiguration is tagged;
   type AppNameLicensingAdConfiguration_Access is access all AppNameLicensingAdConfiguration'Class;
   type AppNameLicensingAdConfiguration_Access_Array is array (Natural range <>) of AppNameLicensingAdConfiguration_Access;
   type AppNameLicensingAdConfiguration_Access_Array_Access is access all AppNameLicensingAdConfiguration_Access_Array;

   type AppNameLicensingAdConfiguration is new AdConfiguration with null record;

   procedure Initialize (This : in out AppNameLicensingAdConfiguration'Class);
   function Create return AppNameLicensingAdConfiguration_Access;

end org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package;


