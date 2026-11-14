--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;
package org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References is
   type ContextConfigurationPathUtil_Access is access all org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package.ContextConfigurationPathUtil'Class;
   type ContextConfigurationPathUtil_Access_Array is array (Natural range <>) of ContextConfigurationPathUtil_Access;
   type ContextConfigurationPathUtil_Access_Array_Access is access all ContextConfigurationPathUtil_Access_Array;
   type ContextConfigurationPathUtil_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationPathUtil_Access_Array_Access;
   type ContextConfigurationPathUtil_Access_Array_Access_Array_Access is access all ContextConfigurationPathUtil_Access_Array_Access_Array;
   type ContextConfigurationPathUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationPathUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationPathUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationPathUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationPathUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationPathUtil_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationPathUtil_Access_Array_Object'Class then ContextConfigurationPathUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ContextConfigurationPathUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationPathUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationPathUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationPathUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationPathUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationPathUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationPathUtil_Access_Array_Access_Array_Object'Class then ContextConfigurationPathUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References;

with org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ContextConfigurationPathUtil_Access is org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.ContextConfigurationPathUtil_Access;
   function "=" (Left, Right : ContextConfigurationPathUtil_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References."=";
   subtype ContextConfigurationPathUtil_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.ContextConfigurationPathUtil_Access_Array;
   function "=" (Left, Right : ContextConfigurationPathUtil_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References."=";
   subtype ContextConfigurationPathUtil_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.ContextConfigurationPathUtil_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationPathUtil_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References."=";
   function Java_Box (Value : ContextConfigurationPathUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationPathUtil_Access_Array (Value : access Java_Object'Class) return ContextConfigurationPathUtil_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.Java_Unbox_ContextConfigurationPathUtil_Access_Array;
   subtype ContextConfigurationPathUtil_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.ContextConfigurationPathUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationPathUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References."=";
   subtype ContextConfigurationPathUtil_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.ContextConfigurationPathUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationPathUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References."=";
   function Java_Box (Value : ContextConfigurationPathUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationPathUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ContextConfigurationPathUtil_Access_Array_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package_References.Java_Unbox_ContextConfigurationPathUtil_Access_Array_Access_Array;

   type ContextConfigurationPathUtil is new Java_Object with null record;

   procedure Initialize (This : in out ContextConfigurationPathUtil'Class);
   function Create return ContextConfigurationPathUtil_Access;
   function getAbFile (contextName : Unbounded_String) return AbFile_Access;
   procedure getAbFile (contextName : Unbounded_String);
   function getAbPath (contextName : Unbounded_String) return AbPath_Access;
   procedure getAbPath (contextName : Unbounded_String);
   function getPath return Unbounded_String;
   function getFileName (contextName : Unbounded_String) return Unbounded_String;
   procedure getFileName (contextName : Unbounded_String);

end org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;


