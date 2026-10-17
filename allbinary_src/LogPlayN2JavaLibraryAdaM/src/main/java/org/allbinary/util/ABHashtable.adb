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


package body org.allbinary.util.ABHashtable_Package is

   procedure Initialize_Fields (This : in out ABHashtable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABHashtable'Class) is
   begin
        Hashtable_Package.Initialize (This);
   end Initialize;

   function Create return ABHashtable_Access is
      This : constant ABHashtable_Access := new ABHashtable;
   begin
      ABHashtable_Package.Initialize (This.all);
      return This;
   end Create;

   function size (This : in out ABHashtable) return Integer is
   begin
        return Hashtable (This).size;
   end size;

   function isEmpty (This : in out ABHashtable) return Boolean is
   begin
        return Hashtable (This).isEmpty;
   end isEmpty;

   function elements (This : in out ABHashtable) return Enumeration_Access is
   begin
        return Hashtable (This).elements;
   end elements;

   function contains (This : in out ABHashtable; value_Param : access Java_Object'Class) return Boolean is
      value : Java_Object_Access := Java_Object_Access (value_Param);
   begin
        return Hashtable (This).contains (value);
   end contains;

   function containsValue (This : in out ABHashtable; value_Param : access Java_Object'Class) return Boolean is
      value : Java_Object_Access := Java_Object_Access (value_Param);
   begin
        return Hashtable (This).containsValue (value);
   end containsValue;

   function containsKey (This : in out ABHashtable; key_Param : access Java_Object'Class) return Boolean is
      key : Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return Hashtable (This).containsKey (key);
   end containsKey;

   function get (This : in out ABHashtable; key_Param : access Java_Object'Class) return Java_Object_Access is
      key : Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return Hashtable (This).get (key);
   end get;

   procedure clear (This : in out ABHashtable) is
   begin
        Hashtable (This).clear;
   end clear;

   function clone (This : in out ABHashtable) return Java_Object_Access is
   begin
        return Hashtable (This).clone;
   end clone;

   function toString (This : in out ABHashtable) return Unbounded_String is
   begin
        return Hashtable (This).toString;
   end toString;

   function equals (This : in out ABHashtable; obj_Param : access Java_Object'Class) return Boolean is
      obj : Java_Object_Access := Java_Object_Access (obj_Param);
   begin
        return Hashtable (This).equals (obj);
   end equals;

   function hashCode (This : in out ABHashtable) return Integer is
   begin
        return Hashtable (This).hashCode;
   end hashCode;

   procedure contains (This : in out ABHashtable; value_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := ABHashtable'Class (This).contains (value_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end contains;

   procedure containsValue (This : in out ABHashtable; value_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := ABHashtable'Class (This).containsValue (value_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsValue;

   procedure containsKey (This : in out ABHashtable; key_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := ABHashtable'Class (This).containsKey (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsKey;

   procedure get (This : in out ABHashtable; key_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := ABHashtable'Class (This).get (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure equals (This : in out ABHashtable; obj_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := ABHashtable'Class (This).equals (obj_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equals;

end org.allbinary.util.ABHashtable_Package;


