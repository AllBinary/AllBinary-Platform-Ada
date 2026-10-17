-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.util.ABVector_Package is

   procedure Initialize_Fields (This : in out ABVector'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABVector'Class) is
   begin
      Vector_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ABVector_Access is
      This : constant ABVector_Access := new ABVector;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure ensureCapacity (This : in out ABVector; minCapacity : Integer) is
   begin
        Vector (This).ensureCapacity (minCapacity);
   end ensureCapacity;

   function capacity (This : in out ABVector) return Integer is
   begin
        return Vector (This).capacity;
   end capacity;

   function size (This : in out ABVector) return Integer is
   begin
        return Vector (This).size;
   end size;

   function isEmpty (This : in out ABVector) return Boolean is
   begin
        return Vector (This).isEmpty;
   end isEmpty;

   function contains (This : in out ABVector; obj : Java_Object_Access) return Boolean is
   begin
        return Vector (This).contains (obj);
   end contains;

   function indexOf (This : in out ABVector; obj : Java_Object_Access) return Integer is
   begin
        return Vector (This).indexOf (obj);
   end indexOf;

   function lastIndexOf (This : in out ABVector; obj : Java_Object_Access) return Integer is
   begin
        return Vector (This).lastIndexOf (obj);
   end lastIndexOf;

   function elementAt (This : in out ABVector; index : Integer) return Java_Object_Access is
   begin
        return Vector (This).elementAt (index);
   end elementAt;

   function firstElement (This : in out ABVector) return Java_Object_Access is
   begin
        return Vector (This).firstElement;
   end firstElement;

   function lastElement (This : in out ABVector) return Java_Object_Access is
   begin
        return Vector (This).lastElement;
   end lastElement;

   procedure setElementAt (This : in out ABVector; obj : Java_Object_Access; index : Integer) is
   begin
        Vector (This).setElementAt (obj, index);
   end setElementAt;

   procedure removeElementAt (This : in out ABVector; index : Integer) is
   begin
        Vector (This).removeElementAt (index);
   end removeElementAt;

   procedure addElement (This : in out ABVector; obj : Java_Object_Access) is
   begin
        Vector (This).addElement (obj);
   end addElement;

   procedure insertElementAt (This : in out ABVector; obj : Java_Object_Access; index : Integer) is
   begin
        Vector (This).insertElementAt (obj, index);
   end insertElementAt;

   function removeElement (This : in out ABVector; obj : Java_Object_Access) return Boolean is
   begin
        return Vector (This).removeElement (obj);
   end removeElement;

   procedure removeAllElements (This : in out ABVector) is
   begin
        Vector (This).removeAllElements;
   end removeAllElements;

   function clone (This : in out ABVector) return Java_Object_Access is
   begin
        return Vector (This).clone;
   end clone;

   function toArray (This : in out ABVector) return Java_Object_Access_Array_Access is
   begin
        return Vector (This).toArray;
   end toArray;

   function set (This : in out ABVector; index : Integer; element : Java_Object_Access) return Java_Object_Access is
   begin
        return Vector (This).set (index, element);
   end set;

   function add (This : in out ABVector; element : Java_Object_Access) return Boolean is
   begin
        return Vector (This).add (element);
   end add;

   function remove (This : in out ABVector; obj : Java_Object_Access) return Boolean is
   begin
        return Vector (This).remove (obj);
   end remove;

   procedure add (This : in out ABVector; index : Integer; element : Java_Object_Access) is
   begin
        Vector (This).add (index, element);
   end add;

   function remove (This : in out ABVector; index : Integer) return Java_Object_Access is
   begin
        return Vector (This).remove (index);
   end remove;

   procedure clear (This : in out ABVector) is
   begin
        Vector (This).clear;
   end clear;

   function equals (This : in out ABVector; obj : Java_Object_Access) return Boolean is
   begin
        return Vector (This).equals (obj);
   end equals;

   function hashCode (This : in out ABVector) return Integer is
   begin
        return Vector (This).hashCode;
   end hashCode;

   function toString (This : in out ABVector) return Unbounded_String is
   begin
        return Vector (This).toString;
   end toString;

   procedure removeRange (This : in out ABVector; fromIndex : Integer; toIndex : Integer) is
   begin
        Vector (This).removeRange (fromIndex, toIndex);
   end removeRange;

   procedure capacity (This : in out ABVector) is
      Java_Result : constant Integer := ABVector'Class (This).capacity;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end capacity;

   procedure size (This : in out ABVector) is
      Java_Result : constant Integer := ABVector'Class (This).size;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end size;

   procedure isEmpty (This : in out ABVector) is
      Java_Result : constant Boolean := ABVector'Class (This).isEmpty;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEmpty;

   procedure contains (This : in out ABVector; obj : Java_Object_Access) is
      Java_Result : constant Boolean := ABVector'Class (This).contains (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end contains;

   procedure indexOf (This : in out ABVector; obj : Java_Object_Access) is
      Java_Result : constant Integer := ABVector'Class (This).indexOf (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end indexOf;

   procedure lastIndexOf (This : in out ABVector; obj : Java_Object_Access) is
      Java_Result : constant Integer := ABVector'Class (This).lastIndexOf (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end lastIndexOf;

   procedure elementAt (This : in out ABVector; index : Integer) is
      Java_Result : constant Java_Object_Access := ABVector'Class (This).elementAt (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end elementAt;

   procedure firstElement (This : in out ABVector) is
      Java_Result : constant Java_Object_Access := ABVector'Class (This).firstElement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end firstElement;

   procedure lastElement (This : in out ABVector) is
      Java_Result : constant Java_Object_Access := ABVector'Class (This).lastElement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end lastElement;

   procedure removeElement (This : in out ABVector; obj : Java_Object_Access) is
      Java_Result : constant Boolean := ABVector'Class (This).removeElement (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeElement;

   procedure clone (This : in out ABVector) is
      Java_Result : constant Java_Object_Access := ABVector'Class (This).clone;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end clone;

   procedure toArray (This : in out ABVector) is
      Java_Result : constant Java_Object_Access_Array_Access := ABVector'Class (This).toArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toArray;

   procedure set (This : in out ABVector; index : Integer; element : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ABVector'Class (This).set (index, element);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end set;

   procedure add (This : in out ABVector; element : Java_Object_Access) is
      Java_Result : constant Boolean := ABVector'Class (This).add (element);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end add;

   procedure remove (This : in out ABVector; obj : Java_Object_Access) is
      Java_Result : constant Boolean := ABVector'Class (This).remove (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   procedure remove (This : in out ABVector; index : Integer) is
      Java_Result : constant Java_Object_Access := ABVector'Class (This).remove (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   procedure equals (This : in out ABVector; obj : Java_Object_Access) is
      Java_Result : constant Boolean := ABVector'Class (This).equals (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equals;

   procedure hashCode (This : in out ABVector) is
      Java_Result : constant Integer := ABVector'Class (This).hashCode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hashCode;

   procedure toString (This : in out ABVector) is
      Java_Result : constant Unbounded_String := ABVector'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.util.ABVector_Package;


