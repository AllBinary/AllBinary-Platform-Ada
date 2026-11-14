--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.osgi.framework.BundleActivator_Package;
package org.osgi.framework.BundleActivator_Package_References is
   type BundleActivator_Access is access all org.osgi.framework.BundleActivator_Package.BundleActivator'Class;
   type BundleActivator_Access_Array is array (Natural range <>) of BundleActivator_Access;
   type BundleActivator_Access_Array_Access is access all BundleActivator_Access_Array;
   type BundleActivator_Access_Array_Access_Array is array (Natural range <>) of BundleActivator_Access_Array_Access;
   type BundleActivator_Access_Array_Access_Array_Access is access all BundleActivator_Access_Array_Access_Array;
   type BundleActivator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BundleActivator_Access_Array_Access;
   end record;
   function Java_Box (Value : BundleActivator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BundleActivator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BundleActivator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BundleActivator_Access_Array_Access is (if Value /= null and then Value.all in BundleActivator_Access_Array_Object'Class then BundleActivator_Access_Array_Object'Class (Value.all).Value else null);
   type BundleActivator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BundleActivator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BundleActivator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BundleActivator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BundleActivator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BundleActivator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BundleActivator_Access_Array_Access_Array_Object'Class then BundleActivator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.osgi.framework.BundleActivator_Package_References;

with org.osgi.framework.BundleActivator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.BundleActivator_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type BundleActivator is interface;
   subtype BundleActivator_Access is org.osgi.framework.BundleActivator_Package_References.BundleActivator_Access;
   function "=" (Left, Right : BundleActivator_Access) return Boolean renames org.osgi.framework.BundleActivator_Package_References."=";
   subtype BundleActivator_Access_Array is org.osgi.framework.BundleActivator_Package_References.BundleActivator_Access_Array;
   function "=" (Left, Right : BundleActivator_Access_Array) return Boolean renames org.osgi.framework.BundleActivator_Package_References."=";
   subtype BundleActivator_Access_Array_Access is org.osgi.framework.BundleActivator_Package_References.BundleActivator_Access_Array_Access;
   function "=" (Left, Right : BundleActivator_Access_Array_Access) return Boolean renames org.osgi.framework.BundleActivator_Package_References."=";
   function Java_Box (Value : BundleActivator_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.BundleActivator_Package_References.Java_Box;
   function Java_Unbox_BundleActivator_Access_Array (Value : access Java_Object'Class) return BundleActivator_Access_Array_Access renames org.osgi.framework.BundleActivator_Package_References.Java_Unbox_BundleActivator_Access_Array;
   subtype BundleActivator_Access_Array_Access_Array is org.osgi.framework.BundleActivator_Package_References.BundleActivator_Access_Array_Access_Array;
   function "=" (Left, Right : BundleActivator_Access_Array_Access_Array) return Boolean renames org.osgi.framework.BundleActivator_Package_References."=";
   subtype BundleActivator_Access_Array_Access_Array_Access is org.osgi.framework.BundleActivator_Package_References.BundleActivator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BundleActivator_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.BundleActivator_Package_References."=";
   function Java_Box (Value : BundleActivator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.BundleActivator_Package_References.Java_Box;
   function Java_Unbox_BundleActivator_Access_Array_Access_Array (Value : access Java_Object'Class) return BundleActivator_Access_Array_Access_Array_Access renames org.osgi.framework.BundleActivator_Package_References.Java_Unbox_BundleActivator_Access_Array_Access_Array;
   function Java_Object_Access_From_BundleActivator (Value : BundleActivator_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.osgi.framework.BundleActivator_Package;


