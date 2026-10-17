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


package body org.allbinary.util.ABHashMap_Package is

   procedure Initialize_Fields (This : in out ABHashMap'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABHashMap'Class) is
   begin
      HashMap_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ABHashMap_Access is
      This : constant ABHashMap_Access := new ABHashMap;
   begin
      ABHashMap_Package.Initialize (This.all);
      return This;
   end Create;


   function size (This : in out ABHashMap) return Integer is
   begin
        return HashMap (This).size;
   end size;

   function isEmpty (This : in out ABHashMap) return Boolean is
   begin
        return HashMap (This).isEmpty;
   end isEmpty;

   function get (This : in out ABHashMap; key : Java_Object_Access) return Java_Object_Access is
   begin
        return HashMap (This).get (key);
   end get;

   function containsKey (This : in out ABHashMap; key : Java_Object_Access) return Boolean is
   begin
        return HashMap (This).containsKey (key);
   end containsKey;

   function put (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access) return Java_Object_Access is
   begin
        return HashMap (This).put (key, value);
   end put;

   procedure putAll (This : in out ABHashMap; map : Map_Access) is
   begin
        HashMap (This).putAll (map);
   end putAll;

   function remove (This : in out ABHashMap; key : Java_Object_Access) return Java_Object_Access is
   begin
        return HashMap (This).remove (key);
   end remove;

   procedure clear (This : in out ABHashMap) is
   begin
        HashMap (This).clear;
   end clear;

   function containsValue (This : in out ABHashMap; value : Java_Object_Access) return Boolean is
   begin
        return HashMap (This).containsValue (value);
   end containsValue;

   function keySet (This : in out ABHashMap) return Set_Access is
   begin
        return HashMap (This).keySet;
   end keySet;

   function entrySet (This : in out ABHashMap) return Set_Access is
   begin
        return HashMap (This).entrySet;
   end entrySet;

   function getOrDefault (This : in out ABHashMap; key : Java_Object_Access; defaultValue : Java_Object_Access) return Java_Object_Access is
   begin
        return HashMap (This).getOrDefault (key, defaultValue);
   end getOrDefault;

   function putIfAbsent (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access) return Java_Object_Access is
   begin
        return HashMap (This).putIfAbsent (key, value);
   end putIfAbsent;

   function clone (This : in out ABHashMap) return Java_Object_Access is
   begin
        return HashMap (This).clone;
   end clone;

   procedure get (This : in out ABHashMap; key : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ABHashMap'Class (This).get (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure containsKey (This : in out ABHashMap; key : Java_Object_Access) is
      Java_Result : constant Boolean := ABHashMap'Class (This).containsKey (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsKey;

   procedure put (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ABHashMap'Class (This).put (key, value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure remove (This : in out ABHashMap; key : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ABHashMap'Class (This).remove (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   procedure containsValue (This : in out ABHashMap; value : Java_Object_Access) is
      Java_Result : constant Boolean := ABHashMap'Class (This).containsValue (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsValue;

   procedure getOrDefault (This : in out ABHashMap; key : Java_Object_Access; defaultValue : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ABHashMap'Class (This).getOrDefault (key, defaultValue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrDefault;

   procedure putIfAbsent (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ABHashMap'Class (This).putIfAbsent (key, value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end putIfAbsent;

end org.allbinary.util.ABHashMap_Package;


