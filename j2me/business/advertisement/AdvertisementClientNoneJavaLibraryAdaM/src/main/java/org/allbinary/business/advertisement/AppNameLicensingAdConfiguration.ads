--  Generated Code Do Not Modify

limited with org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package;
package org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References is
   type AppNameLicensingAdConfiguration_Access is access all org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package.AppNameLicensingAdConfiguration'Class;
   type AppNameLicensingAdConfiguration_Access_Array is array (Natural range <>) of AppNameLicensingAdConfiguration_Access;
   type AppNameLicensingAdConfiguration_Access_Array_Access is access all AppNameLicensingAdConfiguration_Access_Array;
   type AppNameLicensingAdConfiguration_Access_Array_Access_Array is array (Natural range <>) of AppNameLicensingAdConfiguration_Access_Array_Access;
   type AppNameLicensingAdConfiguration_Access_Array_Access_Array_Access is access all AppNameLicensingAdConfiguration_Access_Array_Access_Array;
end org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References;

with org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.advertisement.AdConfiguration_Package; use org.allbinary.business.advertisement.AdConfiguration_Package;

package org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AppNameLicensingAdConfiguration_Access is org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References.AppNameLicensingAdConfiguration_Access;
   function "=" (Left, Right : AppNameLicensingAdConfiguration_Access) return Boolean renames org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References."=";
   subtype AppNameLicensingAdConfiguration_Access_Array is org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References.AppNameLicensingAdConfiguration_Access_Array;
   function "=" (Left, Right : AppNameLicensingAdConfiguration_Access_Array) return Boolean renames org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References."=";
   subtype AppNameLicensingAdConfiguration_Access_Array_Access is org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References.AppNameLicensingAdConfiguration_Access_Array_Access;
   function "=" (Left, Right : AppNameLicensingAdConfiguration_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References."=";
   subtype AppNameLicensingAdConfiguration_Access_Array_Access_Array is org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References.AppNameLicensingAdConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : AppNameLicensingAdConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References."=";
   subtype AppNameLicensingAdConfiguration_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References.AppNameLicensingAdConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AppNameLicensingAdConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package_References."=";

   type AppNameLicensingAdConfiguration is new AdConfiguration with null record;

   procedure Initialize (This : in out AppNameLicensingAdConfiguration'Class);
   function Create return AppNameLicensingAdConfiguration_Access;

end org.allbinary.business.advertisement.AppNameLicensingAdConfiguration_Package;


