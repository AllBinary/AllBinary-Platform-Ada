--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package org.allbinary.util.BasicArrayList_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package JsMethod_Package renames jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames jsinterop.annotations.JsProperty_Package;

   type BasicArrayList is tagged;
   type BasicArrayList_Access is access all BasicArrayList'Class;
   type BasicArrayList_Access_Array is array (Natural range <>) of BasicArrayList_Access;
   type BasicArrayList_Access_Array_Access is access all BasicArrayList_Access_Array;

   type BasicArrayList is new Java_Object with record
      arrayUtil : ArrayUtil_Access;
      objectArray : Java_Object_Access_Array_Access;
      currentIndex : Integer;
   end record;
   SIZE : Unbounded_String;

   procedure Initialize (This : in out BasicArrayList'Class; objectArray : Java_Object_Access_Array_Access);
   function Create (objectArray : Java_Object_Access_Array_Access) return BasicArrayList_Access;
   procedure addAt (This : in out BasicArrayList; index : Integer; element : Java_Object_Access);
   function add (This : in out BasicArrayList; anyType : Java_Object_Access) return Boolean;
   procedure add (This : in out BasicArrayList; anyType : Java_Object_Access);
   function removeAt (This : in out BasicArrayList; index : Integer) return Java_Object_Access;
   procedure removeAt (This : in out BasicArrayList; index : Integer);
   function remove (This : in out BasicArrayList; anyType : Java_Object_Access) return Boolean;
   procedure remove (This : in out BasicArrayList; anyType : Java_Object_Access);
   function removeAll2 (This : in out BasicArrayList; list : BasicArrayList_Access) return Boolean;
   procedure removeAll2 (This : in out BasicArrayList; list : BasicArrayList_Access);
   function addAll2 (This : in out BasicArrayList; list : BasicArrayList_Access) return Boolean;
   procedure addAll2 (This : in out BasicArrayList; list : BasicArrayList_Access);
   function addAllList (This : in out BasicArrayList; list : BasicArrayList_Access) return Boolean;
   procedure addAllList (This : in out BasicArrayList; list : BasicArrayList_Access);
   function addAll (This : in out BasicArrayList; newObjectArray : Java_Object_Access_Array_Access) return Boolean;
   procedure addAll (This : in out BasicArrayList; newObjectArray : Java_Object_Access_Array_Access);
   procedure ensureCapacity (This : in out BasicArrayList; minSize : Integer);
   procedure trimToSize (This : in out BasicArrayList);
   function indexOf (This : in out BasicArrayList; anyType : Java_Object_Access) return Integer;
   procedure indexOf (This : in out BasicArrayList; anyType : Java_Object_Access);
   function lastIndexOf (This : in out BasicArrayList; anyType : Java_Object_Access) return Integer;
   procedure lastIndexOf (This : in out BasicArrayList; anyType : Java_Object_Access);
   function get (This : in out BasicArrayList; index : Integer) return Java_Object_Access;
   procedure get (This : in out BasicArrayList; index : Integer);
   function set (This : in out BasicArrayList; index : Integer; element : Java_Object_Access) return Java_Object_Access;
   procedure set (This : in out BasicArrayList; index : Integer; element : Java_Object_Access);
   procedure clear (This : in out BasicArrayList);
   function size_Case (This : in out BasicArrayList) return Integer;
   procedure size_Case (This : in out BasicArrayList);
   function isEmpty (This : in out BasicArrayList) return Boolean;
   procedure isEmpty (This : in out BasicArrayList);
   function contains (This : in out BasicArrayList; anyType : Java_Object_Access) return Boolean;
   procedure contains (This : in out BasicArrayList; anyType : Java_Object_Access);
   function toArray (This : in out BasicArrayList) return Java_Object_Access_Array_Access;
   procedure toArray (This : in out BasicArrayList);
   function toArrayType (This : in out BasicArrayList; objectArray : Java_Object_Access_Array_Access) return Java_Object_Access_Array_Access;
   procedure toArrayType (This : in out BasicArrayList; objectArray : Java_Object_Access_Array_Access);
   function clone (This : in out BasicArrayList) return Java_Object_Access;
   procedure clone (This : in out BasicArrayList);
   function toString (This : in out BasicArrayList) return Unbounded_String;
   procedure toString (This : in out BasicArrayList);

end org.allbinary.util.BasicArrayList_Package;


