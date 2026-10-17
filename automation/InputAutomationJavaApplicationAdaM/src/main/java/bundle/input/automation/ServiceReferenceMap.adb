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


package body bundle.input.automation.ServiceReferenceMap_Package is

   procedure Initialize_Fields (This : in out ServiceReferenceMap'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ServiceReferenceMap'Class; serviceReference : ServiceReference_Access) is
   begin
      Initialize_Fields (This);
        This.serviceReference := serviceReference;
   end Initialize;

   function Create (serviceReference : ServiceReference_Access) return ServiceReferenceMap_Access is
      This : constant ServiceReferenceMap_Access := new ServiceReferenceMap;
   begin
      Initialize (This.all, serviceReference);
      return This;
   end Create;

   function size (This : in out ServiceReferenceMap) return Integer is
   begin
        return -(1);
   end size;

   function isEmpty (This : in out ServiceReferenceMap) return Boolean is
   begin
        return False;
   end isEmpty;

   function containsKey (This : in out ServiceReferenceMap; key : Java_Object_Access) return Boolean is
   begin
        return False;
   end containsKey;

   function containsValue (This : in out ServiceReferenceMap; value : Java_Object_Access) return Boolean is
   begin
        return False;
   end containsValue;

   function get (This : in out ServiceReferenceMap; key : Java_Object_Access) return Java_Object_Access is
   begin
        return This.serviceReference.getProperty (Unbounded_String (key));
   end get;

   function put (This : in out ServiceReferenceMap; key : Java_Object_Access; value : Java_Object_Access) return Java_Object_Access is
   begin
        return null;
   end put;

   function remove (This : in out ServiceReferenceMap; key : Java_Object_Access) return Java_Object_Access is
   begin
        return null;
   end remove;

   procedure putAll (This : in out ServiceReferenceMap; m : Map_Access) is
   begin
        null;
   end putAll;

   procedure clear (This : in out ServiceReferenceMap) is
   begin
        null;
   end clear;

   function keySet (This : in out ServiceReferenceMap) return Set_Access is
      keyStringArray : Unbounded_String_Array_Access;
   begin
        keyStringArray := This.serviceReference.getPropertyKeys;
        return null;
   end keySet;

   function values (This : in out ServiceReferenceMap) return Collection_Access is
   begin
        return null;
   end values;

   function entrySet (This : in out ServiceReferenceMap) return Set_Access is
   begin
        return null;
   end entrySet;

   function toString (map : Map_Access) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        return stringBuffer.toString;
   end toString;

   procedure size (This : in out ServiceReferenceMap) is
      Java_Result : constant Integer := ServiceReferenceMap'Class (This).size;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end size;

   procedure isEmpty (This : in out ServiceReferenceMap) is
      Java_Result : constant Boolean := ServiceReferenceMap'Class (This).isEmpty;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEmpty;

   procedure containsKey (This : in out ServiceReferenceMap; key : Java_Object_Access) is
      Java_Result : constant Boolean := ServiceReferenceMap'Class (This).containsKey (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsKey;

   procedure containsValue (This : in out ServiceReferenceMap; value : Java_Object_Access) is
      Java_Result : constant Boolean := ServiceReferenceMap'Class (This).containsValue (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsValue;

   procedure get (This : in out ServiceReferenceMap; key : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ServiceReferenceMap'Class (This).get (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure put (This : in out ServiceReferenceMap; key : Java_Object_Access; value : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ServiceReferenceMap'Class (This).put (key, value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure remove (This : in out ServiceReferenceMap; key : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ServiceReferenceMap'Class (This).remove (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   procedure keySet (This : in out ServiceReferenceMap) is
      Java_Result : constant Set_Access := ServiceReferenceMap'Class (This).keySet;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keySet;

   procedure values (This : in out ServiceReferenceMap) is
      Java_Result : constant Collection_Access := ServiceReferenceMap'Class (This).values;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end values;

   procedure entrySet (This : in out ServiceReferenceMap) is
      Java_Result : constant Set_Access := ServiceReferenceMap'Class (This).entrySet;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end entrySet;

   procedure toString (map : Map_Access) is
      Java_Result : constant Unbounded_String := toString (map);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end bundle.input.automation.ServiceReferenceMap_Package;


