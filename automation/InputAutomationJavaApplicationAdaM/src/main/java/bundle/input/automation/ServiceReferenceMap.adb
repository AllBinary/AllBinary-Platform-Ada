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


   procedure Initialize (This : in out ServiceReferenceMap'Class; serviceReference_Param : access ServiceReference_Package.ServiceReference'Class) is
      serviceReference : constant ServiceReference_Access := ServiceReference_Access (serviceReference_Param);
   begin
      Initialize_Fields (This);
        This.serviceReference := serviceReference;
   end Initialize;

   function Create (serviceReference_Param : access ServiceReference_Package.ServiceReference'Class) return ServiceReferenceMap_Access is
      This : constant ServiceReferenceMap_Access := new ServiceReferenceMap;
   begin
      ServiceReferenceMap_Package.Initialize (This.all, serviceReference_Param);
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

   function containsKey (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) return Boolean is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return False;
   end containsKey;

   function containsValue (This : in out ServiceReferenceMap; value_Param : access Java_Object'Class) return Boolean is
      value : constant Java_Object_Access := Java_Object_Access (value_Param);
   begin
        return False;
   end containsValue;

   function get (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) return Java_Object_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return This.serviceReference.getProperty (Java_Unbox (key));
   end get;

   function put (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class) return Java_Object_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
      value : constant Java_Object_Access := Java_Object_Access (value_Param);
   begin
        return null;
   end put;

   function remove (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) return Java_Object_Access is
      key : constant Java_Object_Access := Java_Object_Access (key_Param);
   begin
        return null;
   end remove;

   procedure putAll (This : in out ServiceReferenceMap; m_Param : access Map_Package.Map'Class) is
      m : constant Map_Access := Map_Access (m_Param);
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

   function toString (map_Param : access Map_Package.Map'Class) return Unbounded_String is
      map : constant Map_Access := Map_Access (map_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        return stringBuffer.toString;
   end toString;

   procedure containsKey (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := ServiceReferenceMap'Class (This).containsKey (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsKey;

   procedure containsValue (This : in out ServiceReferenceMap; value_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := ServiceReferenceMap'Class (This).containsValue (value_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end containsValue;

   procedure get (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := ServiceReferenceMap'Class (This).get (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure put (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := ServiceReferenceMap'Class (This).put (key_Param, value_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end put;

   procedure remove (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := ServiceReferenceMap'Class (This).remove (key_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

   procedure toString (map_Param : access Map_Package.Map'Class) is
      Java_Result : constant Unbounded_String := toString (map_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end bundle.input.automation.ServiceReferenceMap_Package;


