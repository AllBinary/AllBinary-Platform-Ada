--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
package org.allbinary.util.BasicArrayList_Package_References is
   type BasicArrayList_Access is access all org.allbinary.util.BasicArrayList_Package.BasicArrayList'Class;
   type BasicArrayList_Access_Array is array (Natural range <>) of BasicArrayList_Access;
   type BasicArrayList_Access_Array_Access is access all BasicArrayList_Access_Array;
   type BasicArrayList_Access_Array_Access_Array is array (Natural range <>) of BasicArrayList_Access_Array_Access;
   type BasicArrayList_Access_Array_Access_Array_Access is access all BasicArrayList_Access_Array_Access_Array;
   type BasicArrayList_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayList_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayList_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayList_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayList_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayList_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayList_Access_Array_Object'Class then BasicArrayList_Access_Array_Object'Class (Value.all).Value else null);
   type BasicArrayList_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayList_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayList_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayList_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayList_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayList_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayList_Access_Array_Access_Array_Object'Class then BasicArrayList_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.BasicArrayList_Package_References;

with org.allbinary.util.BasicArrayList_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.ArrayUtil_Package_References;

package org.allbinary.util.BasicArrayList_Package is

   package Reference_Types is
   subtype ArrayUtil_Access is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access;
   use type ArrayUtil_Access;
   subtype ArrayUtil_Access_Array is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array;
   use type ArrayUtil_Access_Array;
   subtype ArrayUtil_Access_Array_Access is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array_Access;
   use type ArrayUtil_Access_Array_Access;
   subtype ArrayUtil_Access_Array_Access_Array is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array_Access_Array;
   use type ArrayUtil_Access_Array_Access_Array;
   subtype ArrayUtil_Access_Array_Access_Array_Access is org.allbinary.util.ArrayUtil_Package_References.ArrayUtil_Access_Array_Access_Array_Access;
   use type ArrayUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   function Java_Box (Value : BasicArrayList_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayList_Package_References.Java_Box;
   function Java_Unbox_BasicArrayList_Access_Array (Value : access Java_Object'Class) return BasicArrayList_Access_Array_Access renames org.allbinary.util.BasicArrayList_Package_References.Java_Unbox_BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   function Java_Box (Value : BasicArrayList_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayList_Package_References.Java_Box;
   function Java_Unbox_BasicArrayList_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicArrayList_Access_Array_Access_Array_Access renames org.allbinary.util.BasicArrayList_Package_References.Java_Unbox_BasicArrayList_Access_Array_Access_Array;

   type BasicArrayList is new Java_Object with record
      arrayUtil : ArrayUtil_Access;
      objectArray : Java_Object_Access_Array_Access;
      currentIndex : Integer;
   end record;
   SIZE_Field : Unbounded_String;

   procedure Initialize (This : in out BasicArrayList'Class; objectArray : Java_Object_Access_Array_Access);
   function Create (objectArray : Java_Object_Access_Array_Access) return BasicArrayList_Access;
   procedure addAt (This : in out BasicArrayList; index : Integer; element_Param : access Java_Object'Class);
   function add (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Boolean;
   procedure add (This : in out BasicArrayList; anyType_Param : access Java_Object'Class);
   function removeAt (This : in out BasicArrayList; index : Integer) return Java_Object_Access;
   procedure removeAt (This : in out BasicArrayList; index : Integer);
   function remove (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Boolean;
   procedure remove (This : in out BasicArrayList; anyType_Param : access Java_Object'Class);
   function removeAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure removeAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function addAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure addAll2 (This : in out BasicArrayList; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function addAllList (This : in out BasicArrayList; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure addAllList (This : in out BasicArrayList; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function addAll (This : in out BasicArrayList; newObjectArray : Java_Object_Access_Array_Access) return Boolean;
   procedure addAll (This : in out BasicArrayList; newObjectArray : Java_Object_Access_Array_Access);
   procedure ensureCapacity (This : in out BasicArrayList; minSize : Integer);
   procedure trimToSize (This : in out BasicArrayList);
   function indexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Integer;
   procedure indexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class);
   function lastIndexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Integer;
   procedure lastIndexOf (This : in out BasicArrayList; anyType_Param : access Java_Object'Class);
   function get (This : in out BasicArrayList; index : Integer) return Java_Object_Access;
   procedure get (This : in out BasicArrayList; index : Integer);
   function set (This : in out BasicArrayList; index : Integer; element_Param : access Java_Object'Class) return Java_Object_Access;
   procedure set (This : in out BasicArrayList; index : Integer; element_Param : access Java_Object'Class);
   procedure clear (This : in out BasicArrayList);
   function size (This : in out BasicArrayList) return Integer;
   function isEmpty (This : in out BasicArrayList) return Boolean;
   function contains (This : in out BasicArrayList; anyType_Param : access Java_Object'Class) return Boolean;
   procedure contains (This : in out BasicArrayList; anyType_Param : access Java_Object'Class);
   function toArray (This : in out BasicArrayList) return Java_Object_Access_Array_Access;
   function toArrayType (This : in out BasicArrayList; objectArray : Java_Object_Access_Array_Access) return Java_Object_Access_Array_Access;
   procedure toArrayType (This : in out BasicArrayList; objectArray : Java_Object_Access_Array_Access);
   function clone (This : in out BasicArrayList) return Java_Object_Access;
   function toString (This : in out BasicArrayList) return Unbounded_String;
   function add (This : in out BasicArrayList; Value : Unbounded_String) return Boolean;
   procedure add (This : in out BasicArrayList; Value : Unbounded_String);
   function remove (This : in out BasicArrayList; Value : Unbounded_String) return Boolean;
   procedure remove (This : in out BasicArrayList; Value : Unbounded_String);
   function indexOf (This : in out BasicArrayList; Value : Unbounded_String) return Integer;
   procedure indexOf (This : in out BasicArrayList; Value : Unbounded_String);
   function lastIndexOf (This : in out BasicArrayList; Value : Unbounded_String) return Integer;
   procedure lastIndexOf (This : in out BasicArrayList; Value : Unbounded_String);
   function contains (This : in out BasicArrayList; Value : Unbounded_String) return Boolean;
   procedure contains (This : in out BasicArrayList; Value : Unbounded_String);

end org.allbinary.util.BasicArrayList_Package;


