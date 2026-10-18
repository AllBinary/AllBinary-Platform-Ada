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


with java.util.Vector_Package; use java.util.Vector_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package body org.allbinary.logic.VectorUtil_Package is

   package Vector_Package renames Standard.java.util.Vector_Package;
   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   procedure Initialize_Fields (This : in out VectorUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out VectorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return VectorUtil_Access is
      This : constant VectorUtil_Access := new VectorUtil;
   begin
      VectorUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return VectorUtil_Access is
   begin
        return VectorUtil_Package.instance;
   end getInstance;

   function getSize (This : in out VectorUtil; anyType_Param : access Java_Object'Class) return Integer is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      vector : Vector_Access;
   begin
        vector := Vector_Access (anyType);
        return vector.size;
   end getSize;

   function elementAt (This : in out VectorUtil; anyType_Param : access Java_Object'Class; index : Integer) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      vector : Vector_Access;
   begin
        vector := Vector_Access (anyType);
        return vector.elementAt (index);
   end elementAt;

   procedure getSize (This : in out VectorUtil; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Integer := VectorUtil'Class (This).getSize (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure elementAt (This : in out VectorUtil; anyType_Param : access Java_Object'Class; index : Integer) is
      Java_Result : constant Java_Object_Access := VectorUtil'Class (This).elementAt (anyType_Param, index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end elementAt;

   function getSize (This : in out VectorUtil; Value : Unbounded_String) return Integer is
   begin
      return VectorUtil'Class (This).getSize (Java_Box (Value));
   end getSize;

   procedure getSize (This : in out VectorUtil; Value : Unbounded_String) is
      Java_Result : constant Integer := VectorUtil'Class (This).getSize (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

begin
   null;
   instance := VectorUtil_Package.Create;

end org.allbinary.logic.VectorUtil_Package;


